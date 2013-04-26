#include "TextFile.hpp"
#include "../../Assert/Assert.hpp"

namespace Core
{
	namespace Storage
	{
		TextFile::TextFile(File* file) : _file(file)
		{
			ASSERT_PARAMETER(file);
		}

		TextFile::TextFile(TextFile const &)
		{
		}

		TextFile& TextFile::operator=(TextFile&)
		{
			return *this;
		}

		TextFile* TextFile::Create(CStr fileName, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName != NULL);
			File* file = File::Create(fileName, corex);
			return file ? new TextFile(file) : NULL;
		}

		TextFile* TextFile::Append(CStr fileName, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName != NULL);
			File* file = File::Open(fileName, corex);

			if(file)
			{
				file->SeekToEnd();
				return new TextFile(file);
			}

			return NULL;
		}

		Bool TextFile::ReadAll(CStr fileName, String& text, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			File* file;
			UInt fileSize;
			UInt length;
			TChar* buffer;
			Bool result = false;

			file = File::OpenReadOnly(fileName, corex);
			if(file)
			{
				fileSize = ToUInt(file->GetFileSize());
				length = fileSize / sizeof(TChar);

				//If fileSize is odd then +1 will compensate the division rounding
				if(fileSize % 2)
					++fileSize;

				text.Reserve(length);

				buffer = text.DrivePointer(length);
				result = file->Read(buffer, fileSize);
				DeletePtr(file);

				if(!result)
				{
					text.Clear();
					text.Shrink();
				}
			}

			return result;
		}

		String::StrPtrVec* TextFile::ReadLines(CStr fileName, CoreException* corex)
		{
			//Here \r\n is used instead of NewLine so that Linux can see lines from a Windows text file
			ASSERT_PARAMETER(fileName);
			String text;
			if(ReadAll(fileName, text, corex))
				return text.Split(text, text.Length(), Text("\r\n"));
			else
				return new String::StrPtrVec();
		}

		Bool TextFile::WriteText(CStr fileName, CStr text, UInt textLength, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			ASSERT_PARAMETER(text);

			TextFile *textFile = TextFile::Create(fileName, corex);
			Bool result = false;

			if(textFile)
			{
				result = textFile->Write(text, textLength, corex); 
				DeletePtr(textFile);
			}

			return result;
		}

		Bool TextFile::WriteText(CStr fileName, CStr text, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			ASSERT_PARAMETER(text);
			return WriteText(fileName, text, String::CStrLength(text), corex);
		}

		Bool TextFile::WriteText(CStr fileName, String const & text, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			return WriteText(fileName, text, text.Length(), corex);
		}

		Bool TextFile::AppendText(CStr fileName, CStr text, UInt textLength, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			ASSERT_PARAMETER(text);

			TextFile *textFile = TextFile::Append(fileName, corex);
			Bool result = false;

			if(textFile)
			{
				result = textFile->Write(text, textLength, corex); 
				DeletePtr(textFile);
			}

			return result;
		}

		Bool TextFile::AppendText(CStr fileName, CStr text, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			ASSERT_PARAMETER(text);
			return AppendText(fileName, text, String::CStrLength(text), corex);
		}

		Bool TextFile::AppendText(CStr fileName, String const & text, CoreException* corex)
		{
			ASSERT_PARAMETER(fileName);
			return AppendText(fileName, text, text.Length(), corex);
		}

		File const & TextFile::FileRef() const
		{
			return *_file;
		}

		Bool TextFile::Write(CStr text, UInt textLength, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return _file->Write((VoidPtr)text, ToUInt32(textLength) * sizeof(TChar), corex);
		}

		Bool TextFile::Write(CStr text, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return Write(text, String::CStrLength(text), corex);
		}

		Bool TextFile::Write(String const & text, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return Write(text, text.Length(), corex);
		}

		Bool TextFile::WriteLine(CStr text, UInt textLength, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return Write(text, ToUInt32(textLength), corex) && Write(NewLine, corex);
		}

		Bool TextFile::WriteLine(CStr text, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return Write(text, corex) && Write(NewLine, corex);
		}

		Bool TextFile::WriteLine(String const & text, CoreException* corex) const
		{
			ASSERT_PARAMETER(text);
			ASSERT(_file);
			return WriteLine(text, text.Length(), corex);
		}

		Bool TextFile::WriteLine(CoreException* corex) const
		{
			ASSERT(_file);
			return Write(NewLine, corex);
		}

		void TextFile::Close()
		{
			DeletePtr(_file)
		}

		TextFile::~TextFile()
		{
			Close();
		}
	}
}

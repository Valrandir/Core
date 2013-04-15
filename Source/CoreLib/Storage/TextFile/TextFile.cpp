#include "TextFile.hpp"
#include "../../Assert/Assert.hpp"

namespace Core
{
	namespace Storage
	{
		TextFile::TextFile(File* file) : _file(file)
		{
			ASSERT(file != NULL);
		}

		TextFile::TextFile(TextFile const &)
		{
		}

		TextFile& TextFile::operator=(TextFile&)
		{
			return *this;
		}

		TextFile* TextFile::Create(CStr fileName)
		{
			ASSERT(fileName != NULL);
			File* file = File::Create(fileName);
			return file ? new TextFile(file) : NULL;
		}

		TextFile* TextFile::Append(CStr fileName)
		{
			ASSERT(fileName != NULL);
			File* file = File::Open(fileName);

			if(file)
			{
				file->SeekToEnd();
				return new TextFile(file);
			}

			return 0;
		}

		String TextFile::ReadAll(CStr fileName)
		{
			ASSERT(fileName);
			File* file;
			String text;
			UInt fileSize;
			UInt length;
			TChar* buffer;

			file = File::OpenReadOnly(fileName);
			if(file)
			{
				fileSize = ToUInt(file->GetFileSize());
				length = fileSize / sizeof(TChar);
				text.Reserve(length);
				buffer = text.DrivePointer(length);
				file->Read(buffer, fileSize);
				DeletePtr(file);
			}

			return text;
		}

		String::StrPtrVec* TextFile::ReadLines(CStr fileName)
		{
			//Here \r\n is used instead of NewLine,
			//so that Linux can see lines from a Windows text file
			ASSERT(fileName);
			auto text = ReadAll(fileName);
			auto lines = text.Split(text, text.Length(), Text("\r\n"));
			return lines;
		}

		void TextFile::WriteAll(CStr fileName, CStr text, UInt textLength)
		{
			TextFile *textFile = TextFile::Create(fileName);
			textFile->Write(text, textLength); 
			DeletePtr(textFile);
		}

		void TextFile::WriteAll(CStr fileName, CStr text)
		{
			WriteAll(fileName, text, String::CStrLength(text));
		}

		void TextFile::WriteAll(CStr fileName, String text)
		{
			WriteAll(fileName, text, text.Length());
		}

		void TextFile::AppendAll(CStr fileName, CStr text, UInt textLength)
		{
			TextFile *textFile = TextFile::Append(fileName);
			textFile->Write(text, textLength); 
			DeletePtr(textFile);
		}

		void TextFile::AppendAll(CStr fileName, CStr text)
		{
			AppendAll(fileName, text, String::CStrLength(text));
		}

		void TextFile::AppendAll(CStr fileName, String text)
		{
			AppendAll(fileName, text, text.Length());
		}

		void TextFile::Write(CStr text, UInt textLength) const
		{
			ASSERT(_file);
			_file->Write((VoidPtr)text, ToUInt32(textLength) * sizeof(TChar));
		}

		void TextFile::Write(CStr text) const
		{
			ASSERT(_file);
			Write(text, String::CStrLength(text));
		}

		void TextFile::Write(String const & text) const
		{
			ASSERT(_file);
			Write(text, text.Length());
		}

		void TextFile::WriteLine(CStr text, UInt textLength) const
		{
			ASSERT(_file);
			Write(text, ToUInt32(textLength));
			Write(NewLine);
		}

		void TextFile::WriteLine(CStr text) const
		{
			ASSERT(_file);
			Write(text);
			Write(NewLine);
		}

		void TextFile::WriteLine(String const & text) const
		{
			ASSERT(_file);
			WriteLine(text, text.Length());
		}

		void TextFile::WriteLine() const
		{
			ASSERT(_file);
			Write(NewLine);
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

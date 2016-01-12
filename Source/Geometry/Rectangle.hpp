#pragma once
#include "Center.hpp"
#include "Point.hpp"
#include "Size.hpp"

namespace Galatea
{
	namespace Geometry
	{
		struct Rectangle
		{
			int x1, y1, x2, y2;

			Rectangle();
			Rectangle(const Rectangle& src);
			Rectangle& operator=(const Rectangle& src);
			bool operator==(const Rectangle& src) const;

			Rectangle(const Point& xy1, const Point& xy2);
			Rectangle(const Point& position, const Size& size);
			Rectangle(const Center& center, const Size& size);

			void SetPosition(const Point& position);
			void SetCenter(const Point& center);
			void SetSize(const Point& size);
			void Offset(const Point& offset);

			bool Intersect(const Rectangle& src) const;

			int Width() const;
			int Height() const;
			Point Center() const;
		};
	}
}

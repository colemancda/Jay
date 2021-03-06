//
//  Error.swift
//  Jay
//
//  Created by Honza Dvorsky on 2/17/16.
//  Copyright © 2016 Honza Dvorsky. All rights reserved.
//

enum Error: ErrorProtocol {
    case UnexpectedEnd(Reader)
    case Unimplemented(String)
    case ParseStringFromCharsFailed([JChar])
    case UnexpectedCharacter(Reader)
    case Mismatch(Reader, Reader)
    case NumberParsingFailed(Reader)
    case InvalidUnicodeSpecifier(Reader)
    case InvalidEscape(Reader)
    case UnescapedControlCharacterInString(Reader)
    case UnicodeCharacterParsing([JChar], Reader)
    case InvalidSurrogatePair(UInt16, UInt16, Reader)
    case ObjectNameSeparatorMissing(Reader)
    case FailedToConvertIntoNativeType(JSON)
    case UnsupportedType(Any)
    case UnsupportedFloatingPointType(Any)
    case UnsupportedIntegerType(Any)
    case KeyIsNotString(Any)
    case ExtraTokensFound(Reader)
}


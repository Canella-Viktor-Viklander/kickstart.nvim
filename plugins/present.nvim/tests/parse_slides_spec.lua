---@diagnostic disable:undefined-field

local parse = require('present')._parse_slides

local eq = assert.art.same

describe('present.parse_slides', function()
  it('should parse an empty file', function()
    eq({
      slides = {
        {
          title = '',
          body = {},
          blocks = {},
        },
      },
    }, parse {})
  end)

  it('should parse a file with one slide', function()
    eq(
      {
        slides = {
          {
            title = '# This is the first slide',
            body = { 'This is the body' },
            blocks = {},
          },
        },
      },
      parse {
        '# This is the first slide',
        'This is the body',
      }
    )
  end)
end)

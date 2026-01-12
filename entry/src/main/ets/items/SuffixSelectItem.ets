import { HdsListItemCard, SuffixSelect, SelectStyle } from '@kit.UIDesignKit'
import { SymbolGlyphModifier, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixSelectItem {
  selectStyle: SelectStyle = {
    value: 'Select',
    optionValues: ['Alarm', 'Message'],
    optionSymbol: [new SymbolGlyphModifier($r('sys.symbol.alarm')), new SymbolGlyphModifier($r('sys.symbol.message'))]
  }

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Select',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixSelect(this.selectStyle)

      })
    }
  }
}
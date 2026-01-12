import { HdsListItemCard, PrefixIcon } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixIconItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Icon',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        prefixItem: new PrefixIcon({
          iconSize: 24,
          iconValue: {
            symbol: $r('sys.symbol.message')
          }
        })
      })
    }
  }
}
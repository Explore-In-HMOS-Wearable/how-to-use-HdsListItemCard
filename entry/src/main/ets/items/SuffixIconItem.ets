import { HdsListItemCard, SuffixIcon } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixIconItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Icon',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixIcon({
          iconValue: {
            symbol: $r('sys.symbol.message')
          },
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked the Icon'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        })

      })
    }
  }
}
import { HdsListItemCard, SuffixSubIcon } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixSubIconItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Sub Icon',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixSubIcon({
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
        }, {
          iconValue: {
            symbol: $r('sys.symbol.alarm')
          },
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked the Sub Icon'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        })

      })
    }
  }
}
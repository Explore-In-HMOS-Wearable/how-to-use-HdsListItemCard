import { HdsListItemCard, SuffixButton } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixButtonItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Button',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixButton({
          text: 'Click',
          textColor: Color.White,
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked',
              duration: 1000
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        })

      })
    }
  }
}
import { HdsListItemCard, PrefixButton } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixButtonItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Button',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        prefixItem: new PrefixButton({
          text: 'Click',
          textColor: Color.White,
          onClick: () => {
            promptAction.openToast({
              message: 'Clicked the button'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        })
      })
    }
  }
}
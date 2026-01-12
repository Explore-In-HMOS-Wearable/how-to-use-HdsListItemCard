import { HdsListItemCard, SuffixArrowIconText } from '@kit.UIDesignKit'
import { promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixArrowIconTextItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Arrow Icon Text',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixArrowIconText({
          startArrow: {
            arrowColor: Color.White,
            onClick: () => {
              promptAction.openToast({
                message: 'Clicked the left arrow'
              }).catch(() => {
                // TODO: Implement error handling.
              })
            }
          },
          text: {
            text: 'Text',
            modifier: new TextModifier().fontColor(Color.White).fontSize(18)
          },
          endArrow: {
            arrowColor: Color.White,
            onClick: () => {
              promptAction.openToast({
                message: 'Clicked the right arrow'
              }).catch(() => {
                // TODO: Implement error handling.
              })
            }
          }

        })

      })
    }
  }
}
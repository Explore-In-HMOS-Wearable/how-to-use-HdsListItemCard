import { HdsListItemCard, SuffixTextAndArrow } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixTextAndArrowItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Badge and Arrow',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixTextAndArrow({
          text: 'Text',
          modifier: new TextModifier().fontColor(Color.White).fontSize(18)
        }, {
          color: Color.White
        })

      })
    }
  }
}
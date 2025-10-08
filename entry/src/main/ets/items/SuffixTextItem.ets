import { HdsListItemCard, SuffixText } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixTextItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Text',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixText({
          text: 'Text',
          modifier: new TextModifier()
            .fontSize(18)
            .fontColor(Color.White)
        }),

      })
    }
  }
}
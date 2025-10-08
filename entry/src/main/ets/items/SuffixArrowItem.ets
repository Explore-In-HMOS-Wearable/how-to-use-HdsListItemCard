import { HdsListItemCard, SuffixArrow } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixArrowItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Arrow',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixArrow({
          color: Color.White
        })

      })
    }
  }
}
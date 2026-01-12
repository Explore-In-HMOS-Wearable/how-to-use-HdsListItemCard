import { HdsListItemCard, SuffixLoadingProgress } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixLoadingProgressItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Loading Progress',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixLoadingProgress({
          color: Color.White
        })

      })
    }
  }
}
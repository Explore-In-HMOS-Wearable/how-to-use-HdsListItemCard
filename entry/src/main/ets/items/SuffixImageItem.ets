import { HdsListItemCard, SuffixImage } from '@kit.UIDesignKit'
import { ImageModifier, promptAction, TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixImageItem {
  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Image',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixImage({
          image: $r('app.media.startIcon'),
          modifier: new ImageModifier().width(48).height(48),
          onClick: () => {
            promptAction.openToast({
              message: 'Suffix Image clicked'
            }).catch(() => {
              // TODO: Implement error handling.
            })
          }
        }),

      })
    }
  }
}
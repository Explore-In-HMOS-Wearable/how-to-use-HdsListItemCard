import { HdsListItemCard, SuffixRadio } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixRadioItem {
  @State isRadioChecked: boolean = true;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Radio',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixRadio({
          isCheck: this.isRadioChecked,
          selectColor: Color.Blue,
          onChange: () => {
            // handle on change
          },
          onClick: () => {
            this.isRadioChecked = !this.isRadioChecked;
          },
          enable: false
        })

      })
    }
  }
}
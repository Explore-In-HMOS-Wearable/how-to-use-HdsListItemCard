import { HdsListItemCard, SuffixSwitch } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixSwitchItem {
  @State isChecked: boolean = false;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Switch',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        suffixItem: new SuffixSwitch({
          isCheck: this.isChecked,
          selectColor: Color.Blue,
          onChange: () => {
            // handle onChange
          },
          onClick: () => {
            this.isChecked = !this.isChecked
          }
        })

      })
    }
  }
}
import { HdsListItemCard, PrefixSwitch } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct PrefixSwitchItem {
  @State isChecked: boolean = false;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Prefix Switch',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          },
        },
        prefixItem: new PrefixSwitch({
          isCheck: this.isChecked,
          selectColor: Color.Red,
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
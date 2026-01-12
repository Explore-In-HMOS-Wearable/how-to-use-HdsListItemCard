import { HdsListItemCard, SuffixCheckbox } from '@kit.UIDesignKit'
import { TextModifier } from '@kit.ArkUI'

@Component
export struct SuffixCheckboxItem {
  @State isChecked: boolean = true;

  build() {
    ListItem() {
      HdsListItemCard({
        textItem: {
          secondaryText: {
            text: 'Suffix Checkbox',
            modifier: new TextModifier()
              .fontColor('#fff5f5f5')
          }
        },
        suffixItem: new SuffixCheckbox({
          isCheck: this.isChecked,
          selectColor: Color.Blue,
          onChange: () => {
            // handle on change
          },
          onClick: () => {
            this.isChecked = !this.isChecked;
          }
        })

      })
    }
  }
}
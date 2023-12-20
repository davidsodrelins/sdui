import { Story, Meta } from '@storybook/angular/types-6-0';
import { moduleMetadata } from '@storybook/angular';
import { Typography } from './Typography.component';

export default {
  title: 'Componentes/Typography',
  component: Typography,
  decorators: [
    moduleMetadata({
      declarations: [Typography],
      imports: [],
    }),
  ],
} as Meta;

const Template: Story<Typography> = (args: Typography) => ({
  component: Typography,
  props: args,
});

export const Primary = Template.bind({});
Primary.args = {
  // Adicione os props padrão aqui
};

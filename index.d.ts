import { Component } from 'react';
import { TextInputProps } from 'react-native';

interface Props {
  onChangeText: (text: string) => void;
  autoFocus: boolean;
  editable?: boolean;
  handlesColor?: string;
  keyboardDismissMode?: 'none' | 'on-drag' | 'interactive';
}

class TextView extends Component<Props & TextInputProps> {
   export const focus: () => void;
   export const blur: () => void;
   export const setText: (text: string) => void;
}

export default TextView;

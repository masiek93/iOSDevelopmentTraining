import Anchorage
import UIKit

class PersonCell: UITableViewCell {
    let nameLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .green
        return label
    }()
    
    let selectedSwitch = UISwitch(frame: .zero)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(selectedSwitch)
        
        nameLabel.leadingAnchor == leadingAnchor + 20
        nameLabel.topAnchor == topAnchor
        nameLabel.bottomAnchor == bottomAnchor
        nameLabel.trailingAnchor == selectedSwitch.leadingAnchor
        nameLabel.heightAnchor == 60
        
        selectedSwitch.centerYAnchor == centerYAnchor
        selectedSwitch.trailingAnchor == trailingAnchor - 20
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        nameLabel.text = nil
        selectedSwitch.isOn = false
    }
}

<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'shop' );

/** Username của database */
define( 'DB_USER', 'root' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', '' );

/** Hostname của database */
define( 'DB_HOST', 'localhost' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'qNf(3iP`>v6zTW2S$@qsdu*/5ok38Qb~]u!Y8Lbk;^paC(gNAVNuaqt},iD|%GtV' );
define( 'SECURE_AUTH_KEY',  'rQO-PTi6E,%;c-hJ[dUqLaE%-XPugh6 UwLH&~1;S$+Ei|/xM+FW7x[C~Iy+~0rL' );
define( 'LOGGED_IN_KEY',    'b!MEZqRDSaJ<zH{wHmv^{3UIUn],)J0$Y^H]C}*Y4i`y_68c5>6M2hxp6u.#N!<M' );
define( 'NONCE_KEY',        'a=?n]HMj9;J]NFc%:O_BPZD.*ZETjMJHZ_|!co~/~m}Pn5=^Bg_|xk8J-AVrZ5N?' );
define( 'AUTH_SALT',        'CtJ}]dksO$s90y^f#!L9v1n8t6Pa8%,H8F85SG#Xuv[mVJV]m^uJ}S*PYEc&oyVG' );
define( 'SECURE_AUTH_SALT', 'lPojUIbh,Q/AVf{$gZtDWPU7kGb_{z.G:EPLLkD&}P;2`#qcE!GfmcUePy:u{oJe' );
define( 'LOGGED_IN_SALT',   '6U[#Gy3)%q?<g3y8^/%F/6}`ffIWl:]>2Ap<ZXQ2`_Az6Kw}A}s&M+MurGu~1#Bi' );
define( 'NONCE_SALT',       'qG0EI26Mu}(CpL$}KR8A46fIwoE$AP-HF;1F0^V-#/Ifu!0|:{n>bmRZ<r*u8f<Y' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');

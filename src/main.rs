#![no_std]
#![no_main]

use core::panic::PanicInfo;

/// 사용 예 : LED 초기화 후 토글 등
#[no_mangle]
pub extern "C" fn main() -> ! {
    loop {
        // TODO: 애플리케이션 로직
    }
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

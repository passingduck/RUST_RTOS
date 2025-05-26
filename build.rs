fn main() {
    cc::Build::new()
        .file("src/startup.S")     // S = cpp-aware; 필요 없으면 .s
        .compiler("arm-none-eabi-gcc")
        .flag("-mthumb")
        .flag("-mcpu=cortex-m7")
        .assemble("startup");      // libstartup.a 생성

    // 링커가 GC하지 않도록 ResetHandler를 끌어올린다
    println!("cargo:rustc-link-arg=-Wl,-uResetHandler");
}

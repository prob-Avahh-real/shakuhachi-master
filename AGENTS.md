# 尺八高手 (Shakuhachi Master)

尺八（日本竹笛）音色爵士经典节奏游戏，对标大鼓达人。
Web Audio API 合成尺八音色，爵士经典曲目谱面。

## 目标平台

| 平台 | 方式 | 命令 |
|------|------|------|
| 🍎 iOS | Capacitor → Xcode → IPA | `./build.sh` → Xcode Archive |
| 🤖 Android | Capacitor → Gradle → APK | `./build.sh` → `./gradlew assembleDebug` |
| ⌚ 手表 | 自适应 + 触屏 | 自动检测 |
| 👓 智能眼镜 | 窄FOV + 语音控制 | 说音名击打 |
| 💍 智能戒指 | DeviceOrientation 倾角检测 | 上下左右倾斜→不同音高，抖动→音高2 |
| 🦯 智能手杖 | DeviceMotion 加速度检测 | 敲击→音高2，挥动方向→对应音高 |
| 🌐 Web | 单文件 HTML | `./serve.sh` |

## 技术栈

- HTML/CSS/JS 单文件
- Web Audio API 尺八音色合成（噪声气息 + 奇次谐波共振 + 滑音 + 颤音）
- Canvas 渲染 + 竹笛视觉
- RhythmEngine 节奏引擎（复用大鼓达人）
- 5音阶爵士谱面
- Capacitor 原生包装

## Harness / Loop（助手）

- 遵循根 `/Users/skat/AGENTS.md`：**Harness Engineering** + **Loop Engineering**
- Guide = 本文件；Sensor = 下方验证命令；同类失误第二次须沉淀规则或测试（棘轮）
- 开干前写清 **Done**；每切片过验证环；显式停止（成功 / 上限 / 无进展 / 人审）
- 详解：`docs/HARNESS_ENGINEERING.md`、`docs/LOOP_ENGINEERING.md`

## 验证环 / Done

```bash
npm install
npm test          # 若有
npm run build     # 或 build:web
npx cap sync android   # 若有 android/
# 可选：JAVA_HOME=…/openjdk@17 npm run apk:debug
```

**Done 示例**：测试通过（若有）+ web 产物进 `www/`/`dist/` + `cap sync` 无报错。可选穿戴未做可搁置，不纳入强制 Done。

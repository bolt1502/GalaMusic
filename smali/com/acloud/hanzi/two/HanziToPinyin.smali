.class public Lcom/acloud/hanzi/two/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/hanzi/two/HanziToPinyin$DialerSearchToken;,
        Lcom/acloud/hanzi/two/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field public static final ARABIC:I = 0xf

.field private static final FIRST_ARABIC:C = '\u0628'

.field private static final FIRST_HEBREW:C = '\u05d0'

.field private static final FIRST_RUSSIAN_UPPER:C = '\u0410'

.field public static final HEBREW:I = 0x10

.field private static final LAST_ARABIC:C = '\u0649'

.field private static final LAST_HEBREW:C = '\u05ea'

.field private static final LAST_RUSSIAN_LOWER:C = '\u044f'

.field private static final LAST_RUSSIAN_UPPER:C = '\u042f'

.field public static final RUSSIAN:I = 0xe

.field private static final SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sInstance:Lcom/acloud/hanzi/two/HanziToPinyin;

.field private static sMuiSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAsciiTransliterator:Llibcore/icu/Transliterator;

.field private mPinyinTransliterator:Llibcore/icu/Transliterator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x38

    const/16 v5, 0x37

    const/16 v4, 0x33

    const/16 v3, 0x32

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    .line 233
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x434

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x435

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x436

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x437

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x43f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x440

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x441

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x444

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x445

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x446

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x447

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x448

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x449

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x628

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x629

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x621

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x627

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x634

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x635

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x636

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x630

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x631

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x632

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x62e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x646

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x647

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x648

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x649

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x641

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x642

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x643

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x644

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x645

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x637

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x638

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x639

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x63a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5de

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5db

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5d8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5ea

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    const/16 v1, 0x5e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;

    .line 646
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;

    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    :try_start_0
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    .line 94
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Latin-Ascii"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HanziToPinyin"

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 596
    return-void
.end method

.method private addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p3, "subStrSet"    # Ljava/lang/StringBuilder;
    .param p4, "offsets"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/hanzi/two/HanziToPinyin$Token;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/two/HanziToPinyin$Token;>;"
    .local p2, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 601
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 606
    .local v8, "size":I
    const/4 v1, 0x0

    .line 607
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .local v2, "mShortSubStr":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v3, "mShortSubStrOffsets":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v5, "mShortSubStrSet":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v4, "mShortSubStrOffsetsSet":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_2

    .line 633
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 636
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 613
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    iget-object v7, v9, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 616
    .local v7, "mTempStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 617
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 618
    .local v6, "mTempOffset":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 622
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 623
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 625
    :cond_3
    invoke-virtual {v2, v10, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    int-to-char v9, v1

    invoke-virtual {v2, v10, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v3, v10, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    int-to-char v9, v1

    invoke-virtual {v3, v10, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v5, v10, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v4, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 612
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/hanzi/two/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/two/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/acloud/hanzi/two/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 203
    return-void
.end method

.method public static getInstance()Lcom/acloud/hanzi/two/HanziToPinyin;
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/acloud/hanzi/two/HanziToPinyin;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sInstance:Lcom/acloud/hanzi/two/HanziToPinyin;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/acloud/hanzi/two/HanziToPinyin;

    invoke-direct {v0}, Lcom/acloud/hanzi/two/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sInstance:Lcom/acloud/hanzi/two/HanziToPinyin;

    .line 110
    :cond_0
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->sInstance:Lcom/acloud/hanzi/two/HanziToPinyin;

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSpecialRussianCharacter(C)Z
    .locals 2
    .param p1, "specialchar"    # C

    .prologue
    .line 578
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_LOWER:Ljava/util/ArrayList;

    .line 579
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUpperCaseSpecialRussianChar(C)Z
    .locals 2
    .param p1, "specialchar"    # C

    .prologue
    .line 589
    sget-object v0, Lcom/acloud/hanzi/two/HanziToPinyin;->SPECIAL_CHARS_LIST_UPPER:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private tokenize(CLcom/acloud/hanzi/two/HanziToPinyin$Token;)V
    .locals 2
    .param p1, "character"    # C
    .param p2, "token"    # Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 118
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 119
    iput v1, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    .line 120
    iget-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v0, 0x250

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1e00

    if-gt v0, p1, :cond_4

    const/16 v0, 0x1eff

    if-ge p1, v0, :cond_4

    .line 126
    :cond_2
    iput v1, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    .line 127
    iget-object v0, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    :goto_1
    iput-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_4
    const/4 v0, 0x2

    iput v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    .line 133
    iget-object v0, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    iget-object v1, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 134
    iget-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    iget-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    iget-object v1, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :cond_5
    const/4 v0, 0x3

    iput v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    .line 137
    iget-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v0, p2, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/hanzi/two/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/two/HanziToPinyin$Token;>;"
    invoke-virtual {p0}, Lcom/acloud/hanzi/two/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v6

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 163
    .local v5, "tokenType":I
    new-instance v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    invoke-direct {v4}, Lcom/acloud/hanzi/two/HanziToPinyin$Token;-><init>()V

    .line 169
    .local v4, "token":Lcom/acloud/hanzi/two/HanziToPinyin$Token;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 193
    invoke-direct {p0, v3, v6, v5}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 173
    invoke-direct {p0, v3, v6, v5}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 169
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/acloud/hanzi/two/HanziToPinyin;->tokenize(CLcom/acloud/hanzi/two/HanziToPinyin$Token;)V

    .line 177
    iget v7, v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 179
    invoke-direct {p0, v3, v6, v5}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 181
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    .end local v4    # "token":Lcom/acloud/hanzi/two/HanziToPinyin$Token;
    invoke-direct {v4}, Lcom/acloud/hanzi/two/HanziToPinyin$Token;-><init>()V

    .line 189
    .restart local v4    # "token":Lcom/acloud/hanzi/two/HanziToPinyin$Token;
    :goto_3
    iget v5, v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    goto :goto_2

    .line 184
    :cond_6
    iget v7, v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 185
    invoke-direct {p0, v3, v6, v5}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 187
    :cond_7
    iget-object v7, v4, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 21
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "offsets"    # Ljava/lang/StringBuilder;

    .prologue
    .line 408
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 410
    :cond_0
    const/16 v19, 0x0

    .line 568
    :goto_0
    return-object v19

    .line 413
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v13, "subStrSet":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v18, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/hanzi/two/HanziToPinyin$Token;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v11, "shortSubStrOffset":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 417
    .local v8, "inputLength":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v14, "subString":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v12, "subStrOffset":Ljava/lang/StringBuilder;
    const/16 v17, 0x1

    .line 420
    .local v17, "tokenType":I
    const/4 v5, 0x0

    .line 421
    .local v5, "caseTypePre":I
    const/4 v4, 0x1

    .line 422
    .local v4, "caseTypeCurr":I
    const/4 v10, 0x0

    .line 432
    .local v10, "mPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v8, :cond_4

    .line 563
    :cond_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 565
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 567
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 568
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 433
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 434
    .local v6, "character":C
    const/16 v19, 0x2d

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    const/16 v19, 0x2c

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    const/16 v19, 0x28

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    const/16 v19, 0x29

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    .line 435
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-eq v6, v0, :cond_5

    const/16 v19, 0x2f

    move/from16 v0, v19

    if-ne v6, v0, :cond_6

    .line 436
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 559
    :goto_2
    const/16 v19, 0x7f

    move/from16 v0, v19

    if-gt v10, v0, :cond_2

    .line 432
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 437
    :cond_6
    const/16 v19, 0x20

    move/from16 v0, v19

    if-ne v6, v0, :cond_8

    .line 438
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 440
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 442
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v11, v13, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addSubString(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 443
    add-int/lit8 v10, v10, 0x1

    .line 444
    const/4 v5, 0x0

    .line 445
    goto :goto_2

    :cond_8
    const/16 v19, 0x100

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 446
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_9

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 448
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 450
    :cond_9
    const/16 v19, 0x41

    move/from16 v0, v19

    if-lt v6, v0, :cond_c

    const/16 v19, 0x5a

    move/from16 v0, v19

    if-gt v6, v0, :cond_c

    const/4 v4, 0x1

    .line 452
    :goto_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_a

    .line 453
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_a

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 457
    :cond_a
    move v5, v4

    .line 458
    const/16 v17, 0x1

    .line 459
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 460
    .local v3, "c":Ljava/lang/Character;
    if-eqz v3, :cond_b

    .line 461
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 469
    goto/16 :goto_2

    .line 451
    .end local v3    # "c":Ljava/lang/Character;
    :cond_c
    const/4 v4, 0x2

    goto :goto_3

    .line 469
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/acloud/hanzi/two/HanziToPinyin;->isSpecialRussianCharacter(C)Z

    move-result v19

    if-nez v19, :cond_e

    .line 470
    const/16 v19, 0x410

    move/from16 v0, v19

    if-lt v6, v0, :cond_14

    const/16 v19, 0x44f

    move/from16 v0, v19

    if-gt v6, v0, :cond_14

    .line 472
    :cond_e
    const/16 v19, 0xe

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_f

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 478
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/acloud/hanzi/two/HanziToPinyin;->isUpperCaseSpecialRussianChar(C)Z

    move-result v19

    if-nez v19, :cond_10

    .line 479
    const/16 v19, 0x410

    move/from16 v0, v19

    if-lt v6, v0, :cond_13

    const/16 v19, 0x42f

    move/from16 v0, v19

    if-gt v6, v0, :cond_13

    .line 480
    :cond_10
    const/4 v4, 0x1

    .line 483
    :goto_4
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_11

    .line 484
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_11

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 486
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 489
    :cond_11
    move v5, v4

    .line 490
    const/16 v17, 0xe

    .line 492
    sget-object v19, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 493
    .restart local v3    # "c":Ljava/lang/Character;
    if-eqz v3, :cond_12

    .line 494
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 499
    goto/16 :goto_2

    .line 480
    .end local v3    # "c":Ljava/lang/Character;
    :cond_13
    const/4 v4, 0x2

    goto :goto_4

    .line 499
    :cond_14
    const/16 v19, 0x628

    move/from16 v0, v19

    if-lt v6, v0, :cond_17

    const/16 v19, 0x649

    move/from16 v0, v19

    if-gt v6, v0, :cond_17

    .line 501
    const/16 v19, 0xf

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_15

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 506
    :cond_15
    move v5, v4

    .line 507
    const/16 v17, 0xf

    .line 508
    sget-object v19, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 509
    .restart local v3    # "c":Ljava/lang/Character;
    if-eqz v3, :cond_16

    .line 510
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 515
    goto/16 :goto_2

    .end local v3    # "c":Ljava/lang/Character;
    :cond_17
    const/16 v19, 0x5d0

    move/from16 v0, v19

    if-lt v6, v0, :cond_1a

    const/16 v19, 0x5ea

    move/from16 v0, v19

    if-gt v6, v0, :cond_1a

    .line 517
    const/16 v19, 0x10

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_18

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 522
    :cond_18
    move v5, v4

    .line 523
    const/16 v17, 0x10

    .line 524
    sget-object v19, Lcom/acloud/hanzi/two/HanziToPinyin;->sMuiSupportMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 525
    .restart local v3    # "c":Ljava/lang/Character;
    if-eqz v3, :cond_19

    .line 526
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    :cond_19
    add-int/lit8 v10, v10, 0x1

    .line 535
    goto/16 :goto_2

    .line 536
    .end local v3    # "c":Ljava/lang/Character;
    :cond_1a
    new-instance v15, Lcom/acloud/hanzi/two/HanziToPinyin$Token;

    invoke-direct {v15}, Lcom/acloud/hanzi/two/HanziToPinyin$Token;-><init>()V

    .line 537
    .local v15, "t":Lcom/acloud/hanzi/two/HanziToPinyin$Token;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/acloud/hanzi/two/HanziToPinyin;->tokenize(CLcom/acloud/hanzi/two/HanziToPinyin$Token;)V

    .line 538
    iget-object v0, v15, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v16

    .line 540
    .local v16, "tokenSize":I
    iget v0, v15, Lcom/acloud/hanzi/two/HanziToPinyin$Token;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 541
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_1b

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v14, v1, v2}, Lcom/acloud/hanzi/two/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 543
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 545
    :cond_1b
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    move/from16 v0, v16

    if-lt v9, v0, :cond_1c

    .line 549
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/acloud/hanzi/two/HanziToPinyin;->addOffsets(Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 550
    const/16 v17, 0x2

    .line 551
    const/4 v5, 0x0

    .line 552
    add-int/lit8 v10, v10, 0x1

    .line 553
    goto/16 :goto_2

    .line 547
    :cond_1c
    int-to-char v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 554
    .end local v9    # "j":I
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2
.end method

.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/acloud/hanzi/two/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/acloud/hanzi/two/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    invoke-virtual {v0, p1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

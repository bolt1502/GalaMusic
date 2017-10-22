.class public Lorg/videolan/libvlc/util/VLCUtil;
.super Ljava/lang/Object;
.source "VLCUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/VLCUtil$ElfData;,
        Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    }
.end annotation


# static fields
.field private static final CPU_archs:[Ljava/lang/String;

.field private static final ELF_HEADER_SIZE:I = 0x34

.field private static final EM_386:I = 0x3

.field private static final EM_AARCH64:I = 0xb7

.field private static final EM_ARM:I = 0x28

.field private static final EM_MIPS:I = 0x8

.field private static final EM_X86_64:I = 0x3e

.field private static final SECTION_HEADER_SIZE:I = 0x28

.field private static final SHT_ARM_ATTRIBUTES:I = 0x70000003

.field public static final TAG:Ljava/lang/String; = "VLC/LibVLC/Util"

.field private static errorMsg:Ljava/lang/String;

.field private static isCompatible:Z

.field private static machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 26
    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 27
    sput-boolean v2, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 249
    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    .line 316
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*Pre-v4"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "*v4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*v4T"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 317
    const-string v2, "v5T"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "v5TE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "v5TEJ"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 318
    const-string v2, "v6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "v6KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v6T2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "v6K"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "v7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 319
    const-string v2, "*v6-M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "*v6S-M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*v7E-M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "*v8"

    aput-object v2, v0, v1

    .line 316
    sput-object v0, Lorg/videolan/libvlc/util/VLCUtil;->CPU_archs:[Ljava/lang/String;

    .line 319
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getABIList()[Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 44
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v2, v5, :cond_1

    move v1, v3

    .line 45
    .local v1, "hasABI2":Z
    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :goto_1
    new-array v0, v2, [Ljava/lang/String;

    .line 46
    .local v0, "abis":[Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 47
    if-eqz v1, :cond_0

    .line 48
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 49
    :cond_0
    return-object v0

    .end local v0    # "abis":[Ljava/lang/String;
    .end local v1    # "hasABI2":Z
    :cond_1
    move v1, v4

    .line 44
    goto :goto_0

    .restart local v1    # "hasABI2":Z
    :cond_2
    move v2, v3

    .line 45
    goto :goto_1
.end method

.method public static getABIList21()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getMachineSpecs()Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    return-object v0
.end method

.method private static getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 475
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_1

    .line 481
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 476
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v0, v2

    .line 477
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getThumbnail(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;II)[B
    .locals 4
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "i_width"    # I
    .param p3, "i_height"    # I

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".iso"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dvdsimple://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 504
    :cond_0
    new-instance v1, Lorg/videolan/libvlc/Media;

    invoke-direct {v1, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 505
    .local v1, "media":Lorg/videolan/libvlc/Media;
    invoke-static {v1, p2, p3}, Lorg/videolan/libvlc/util/VLCUtil;->getThumbnail(Lorg/videolan/libvlc/Media;II)[B

    move-result-object v0

    .line 506
    .local v0, "bytes":[B
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 507
    return-object v0
.end method

.method public static getThumbnail(Lorg/videolan/libvlc/Media;II)[B
    .locals 1
    .param p0, "media"    # Lorg/videolan/libvlc/Media;
    .param p1, "i_width"    # I
    .param p2, "i_height"    # I

    .prologue
    .line 511
    const-string v0, ":no-audio"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 512
    const-string v0, ":no-spu"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 513
    const-string v0, ":no-osd"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 514
    const-string v0, ":input-fast-seek"

    invoke-virtual {p0, v0}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 515
    invoke-static {p0, p1, p2}, Lorg/videolan/libvlc/util/VLCUtil;->nativeGetThumbnail(Lorg/videolan/libvlc/Media;II)[B

    move-result-object v0

    return-object v0
.end method

.method private static getUleb128(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 488
    .local v1, "ret":I
    :cond_0
    shl-int/lit8 v1, v1, 0x7

    .line 489
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 490
    .local v0, "c":I
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 491
    and-int/lit16 v2, v0, 0x80

    .line 487
    if-gtz v2, :cond_0

    .line 493
    return v1
.end method

.method public static hasCompatibleCPU(Landroid/content/Context;)Z
    .locals 31
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    if-nez v28, :cond_0

    sget-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    if-eqz v28, :cond_1

    :cond_0
    sget-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 242
    :goto_0
    return v28

    .line 56
    :cond_1
    const/16 v22, 0x0

    .local v22, "hasNeon":Z
    const/16 v20, 0x0

    .local v20, "hasFpu":Z
    const/16 v18, 0x0

    .line 57
    .local v18, "hasArmV6":Z
    const/16 v19, 0x0

    .local v19, "hasArmV7":Z
    const/16 v21, 0x0

    .local v21, "hasMips":Z
    const/16 v23, 0x0

    .local v23, "hasX86":Z
    const/16 v24, 0x0

    .line 58
    .local v24, "is64bits":Z
    const/high16 v4, -0x40800000    # -1.0f

    .line 59
    .local v4, "bogoMIPS":F
    const/16 v27, 0x0

    .line 66
    .local v27, "processors":I
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getABIList()[Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "abis":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_e

    .line 88
    const/4 v9, 0x0

    .line 89
    .local v9, "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    const/4 v12, 0x0

    .line 90
    .local v12, "elfHasX86":Z
    const/4 v10, 0x0

    .line 91
    .local v10, "elfHasArm":Z
    const/4 v11, 0x0

    .line 92
    .local v11, "elfHasMips":Z
    const/4 v13, 0x0

    .line 93
    .local v13, "elfIs64bits":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lorg/videolan/libvlc/util/VLCUtil;->searchLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;

    move-result-object v25

    .line 94
    .local v25, "lib":Ljava/io/File;
    if-eqz v25, :cond_1a

    invoke-static/range {v25 .. v25}, Lorg/videolan/libvlc/util/VLCUtil;->readLib(Ljava/io/File;)Lorg/videolan/libvlc/util/VLCUtil$ElfData;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 95
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    const/4 v12, 0x0

    .line 96
    :goto_2
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x28

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0xb7

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    const/4 v10, 0x0

    .line 97
    :goto_3
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    const/4 v11, 0x1

    .line 98
    :goto_4
    iget-boolean v13, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->is64bits:Z

    .line 100
    const-string v29, "VLC/LibVLC/Util"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v28, "ELF ABI = "

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_17

    const-string v28, "arm"

    :goto_5
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 101
    if-eqz v13, :cond_19

    const-string v28, "64bits"

    :goto_6
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 100
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v28, "VLC/LibVLC/Util"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ELF arch = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v28, "VLC/LibVLC/Util"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ELF fpu = "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_7
    const/4 v15, 0x0

    .line 110
    .local v15, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 112
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/FileReader;

    const-string v28, "/proc/cpuinfo"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .local v16, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 115
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_8
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v26

    .local v26, "line":Ljava/lang/String;
    if-nez v26, :cond_1b

    .line 151
    if-eqz v7, :cond_3

    .line 153
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    .line 155
    :cond_3
    :goto_9
    if-eqz v16, :cond_32

    .line 157
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 160
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .end local v26    # "line":Ljava/lang/String;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :cond_4
    :goto_a
    if-nez v27, :cond_5

    .line 161
    const/16 v27, 0x1

    .line 163
    :cond_5
    const/16 v28, 0x1

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 165
    if-eqz v9, :cond_a

    .line 167
    if-eqz v12, :cond_2a

    if-nez v23, :cond_2a

    .line 168
    const-string v28, "x86 build on non-x86 device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 169
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 175
    :cond_6
    :goto_b
    if-eqz v11, :cond_2b

    if-nez v21, :cond_2b

    .line 176
    const-string v28, "MIPS build on non-MIPS device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 177
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 183
    :cond_7
    :goto_c
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x28

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "v7"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    if-nez v19, :cond_8

    .line 184
    const-string v28, "ARMv7 build on non-ARMv7 device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 185
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 187
    :cond_8
    iget v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    move/from16 v28, v0

    const/16 v29, 0x28

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 188
    iget-object v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "v6"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2c

    if-nez v18, :cond_2c

    .line 189
    const-string v28, "ARMv6 build on non-ARMv6 device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 190
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 196
    :cond_9
    :goto_d
    if-eqz v13, :cond_a

    if-nez v24, :cond_a

    .line 197
    const-string v28, "64bits build on 32bits device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 198
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    .line 202
    :cond_a
    const/high16 v17, -0x40800000    # -1.0f

    .line 203
    .local v17, "frequency":F
    const/4 v15, 0x0

    .line 204
    const/4 v6, 0x0

    .line 205
    const-string v26, ""

    .line 207
    .restart local v26    # "line":Ljava/lang/String;
    :try_start_5
    new-instance v16, Ljava/io/FileReader;

    const-string v28, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :try_start_6
    new-instance v7, Ljava/io/BufferedReader;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 209
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .line 210
    if-eqz v26, :cond_b

    .line 211
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v28

    const/high16 v29, 0x447a0000    # 1000.0f

    div-float v17, v28, v29

    .line 218
    :cond_b
    if-eqz v7, :cond_c

    .line 220
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11

    .line 222
    :cond_c
    :goto_e
    if-eqz v16, :cond_31

    .line 224
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 229
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :cond_d
    :goto_f
    new-instance v28, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    invoke-direct/range {v28 .. v28}, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;-><init>()V

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    .line 230
    const-string v28, "VLC/LibVLC/Util"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "machineSpecs: hasArmV6: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", hasArmV7: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 231
    const-string v30, ", hasX86: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", is64bits: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 230
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v18

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV6:Z

    .line 233
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v19

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV7:Z

    .line 234
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v20

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasFpu:Z

    .line 235
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v21

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasMips:Z

    .line 236
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v22

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasNeon:Z

    .line 237
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v23

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasX86:Z

    .line 238
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v24

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->is64bits:Z

    .line 239
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move-object/from16 v0, v28

    iput v4, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->bogoMIPS:F

    .line 240
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->processors:I

    .line 241
    sget-object v28, Lorg/videolan/libvlc/util/VLCUtil;->machineSpecs:Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move/from16 v0, v17

    move-object/from16 v1, v28

    iput v0, v1, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->frequency:F

    .line 242
    sget-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_0

    .line 68
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .end local v10    # "elfHasArm":Z
    .end local v11    # "elfHasMips":Z
    .end local v12    # "elfHasX86":Z
    .end local v13    # "elfIs64bits":Z
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .end local v25    # "lib":Ljava/io/File;
    .end local v26    # "line":Ljava/lang/String;
    :cond_e
    aget-object v2, v3, v28

    .line 69
    .local v2, "abi":Ljava/lang/String;
    const-string v30, "x86"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 70
    const/16 v23, 0x1

    .line 68
    :cond_f
    :goto_10
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 71
    :cond_10
    const-string v30, "x86_64"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 72
    const/16 v23, 0x1

    .line 73
    const/16 v24, 0x1

    .line 74
    goto :goto_10

    :cond_11
    const-string v30, "armeabi-v7a"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 75
    const/16 v19, 0x1

    .line 76
    const/16 v18, 0x1

    .line 77
    goto :goto_10

    :cond_12
    const-string v30, "armeabi"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 78
    const/16 v18, 0x1

    .line 79
    goto :goto_10

    :cond_13
    const-string v30, "arm64-v8a"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 80
    const/16 v22, 0x1

    .line 81
    const/16 v18, 0x1

    .line 82
    const/16 v19, 0x1

    .line 83
    const/16 v24, 0x1

    goto :goto_10

    .line 95
    .end local v2    # "abi":Ljava/lang/String;
    .restart local v9    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .restart local v10    # "elfHasArm":Z
    .restart local v11    # "elfHasMips":Z
    .restart local v12    # "elfHasX86":Z
    .restart local v13    # "elfIs64bits":Z
    .restart local v25    # "lib":Ljava/io/File;
    :cond_14
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 96
    :cond_15
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 97
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 100
    :cond_17
    if-eqz v12, :cond_18

    const-string v28, "x86"

    goto/16 :goto_5

    :cond_18
    const-string v28, "mips"

    goto/16 :goto_5

    .line 101
    :cond_19
    const-string v28, "32bits"

    goto/16 :goto_6

    .line 105
    :cond_1a
    const-string v28, "VLC/LibVLC/Util"

    const-string v29, "WARNING: Unable to read libvlcjni.so; cannot check device ABI!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 116
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v26    # "line":Ljava/lang/String;
    :cond_1b
    :try_start_a
    const-string v28, "AArch64"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 117
    const/16 v19, 0x1

    .line 118
    const/16 v18, 0x1

    .line 134
    :cond_1c
    :goto_11
    const-string v28, "neon"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "asimd"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 135
    :cond_1d
    const/16 v22, 0x1

    .line 136
    :cond_1e
    const-string v28, "vfp"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1f

    const-string v28, "Features"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_20

    const-string v28, "fp"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 137
    :cond_1f
    const/16 v20, 0x1

    .line 138
    :cond_20
    const-string v28, "processor"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 139
    add-int/lit8 v27, v27, 0x1

    .line 140
    :cond_21
    const/16 v28, 0x0

    cmpg-float v28, v4, v28

    if-gez v28, :cond_2

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "bogomips"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 141
    const-string v28, ":"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v5

    .line 143
    .local v5, "bogo_parts":[Ljava/lang/String;
    const/16 v28, 0x1

    :try_start_b
    aget-object v28, v5, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_17
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v4

    goto/16 :goto_8

    .line 119
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    :cond_22
    :try_start_c
    const-string v28, "ARMv7"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 120
    const/16 v19, 0x1

    .line 121
    const/16 v18, 0x1

    .line 122
    goto/16 :goto_11

    :cond_23
    const-string v28, "ARMv6"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 123
    const/16 v18, 0x1

    goto/16 :goto_11

    .line 126
    :cond_24
    const-string v28, "clflush size"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 127
    const/16 v23, 0x1

    goto/16 :goto_11

    .line 128
    :cond_25
    const-string v28, "GenuineIntel"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_26

    .line 129
    const/16 v23, 0x1

    goto/16 :goto_11

    .line 132
    :cond_26
    const-string v28, "microsecond timers"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result v28

    if-eqz v28, :cond_1c

    .line 133
    const/16 v21, 0x1

    goto/16 :goto_11

    .line 144
    .restart local v5    # "bogo_parts":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 145
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/high16 v4, -0x40800000    # -1.0f

    goto/16 :goto_8

    .line 149
    .end local v5    # "bogo_parts":[Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .end local v26    # "line":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v28

    .line 151
    :goto_12
    if-eqz v6, :cond_27

    .line 153
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 155
    :cond_27
    :goto_13
    if-eqz v15, :cond_4

    .line 157
    :try_start_e
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_a

    .line 158
    :catch_2
    move-exception v28

    goto/16 :goto_a

    .line 150
    :catchall_0
    move-exception v28

    .line 151
    :goto_14
    if-eqz v6, :cond_28

    .line 153
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 155
    :cond_28
    :goto_15
    if-eqz v15, :cond_29

    .line 157
    :try_start_10
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 159
    :cond_29
    :goto_16
    throw v28

    .line 158
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v26    # "line":Ljava/lang/String;
    :catch_3
    move-exception v28

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_a

    .line 170
    .end local v26    # "line":Ljava/lang/String;
    :cond_2a
    if-eqz v10, :cond_6

    if-nez v18, :cond_6

    .line 171
    const-string v28, "ARM build on non ARM device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 172
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_b

    .line 178
    :cond_2b
    if-eqz v10, :cond_7

    if-eqz v21, :cond_7

    .line 179
    const-string v28, "ARM build on MIPS device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 180
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_c

    .line 191
    :cond_2c
    iget-boolean v0, v9, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9

    if-nez v20, :cond_9

    .line 192
    const-string v28, "FPU-enabled build on non-FPU device"

    sput-object v28, Lorg/videolan/libvlc/util/VLCUtil;->errorMsg:Ljava/lang/String;

    .line 193
    const/16 v28, 0x0

    sput-boolean v28, Lorg/videolan/libvlc/util/VLCUtil;->isCompatible:Z

    goto/16 :goto_d

    .line 212
    .restart local v17    # "frequency":F
    .restart local v26    # "line":Ljava/lang/String;
    :catch_4
    move-exception v14

    .line 213
    .local v14, "ex":Ljava/io/IOException;
    :goto_17
    :try_start_11
    const-string v28, "VLC/LibVLC/Util"

    const-string v29, "Could not find maximum CPU frequency!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 218
    if-eqz v6, :cond_2d

    .line 220
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 222
    :cond_2d
    :goto_18
    if-eqz v15, :cond_d

    .line 224
    :try_start_13
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_f

    .line 225
    :catch_5
    move-exception v28

    goto/16 :goto_f

    .line 214
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 215
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_19
    :try_start_14
    const-string v28, "VLC/LibVLC/Util"

    const-string v29, "Could not parse maximum CPU frequency!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v28, "VLC/LibVLC/Util"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Failed to parse: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 218
    if-eqz v6, :cond_2e

    .line 220
    :try_start_15
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 222
    :cond_2e
    :goto_1a
    if-eqz v15, :cond_d

    .line 224
    :try_start_16
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_f

    .line 225
    :catch_7
    move-exception v28

    goto/16 :goto_f

    .line 217
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catchall_1
    move-exception v28

    .line 218
    :goto_1b
    if-eqz v6, :cond_2f

    .line 220
    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 222
    :cond_2f
    :goto_1c
    if-eqz v15, :cond_30

    .line 224
    :try_start_18
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 226
    :cond_30
    :goto_1d
    throw v28

    .line 225
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v28

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_f

    .line 154
    .end local v17    # "frequency":F
    .end local v26    # "line":Ljava/lang/String;
    :catch_9
    move-exception v28

    goto/16 :goto_13

    :catch_a
    move-exception v29

    goto/16 :goto_15

    .line 158
    :catch_b
    move-exception v29

    goto/16 :goto_16

    .line 154
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v26    # "line":Ljava/lang/String;
    :catch_c
    move-exception v28

    goto/16 :goto_9

    .line 221
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "ex":Ljava/io/IOException;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "frequency":F
    :catch_d
    move-exception v28

    goto :goto_18

    .end local v14    # "ex":Ljava/io/IOException;
    .restart local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_e
    move-exception v28

    goto :goto_1a

    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_f
    move-exception v29

    goto :goto_1c

    .line 225
    :catch_10
    move-exception v29

    goto :goto_1d

    .line 221
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_11
    move-exception v28

    goto/16 :goto_e

    .line 217
    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v28

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1b

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_3
    move-exception v28

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_1b

    .line 214
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_12
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_19

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_13
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto :goto_19

    .line 212
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_14
    move-exception v14

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_17

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_15
    move-exception v14

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_17

    .line 150
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .end local v26    # "line":Ljava/lang/String;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_4
    move-exception v28

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_14

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catchall_5
    move-exception v28

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_14

    .line 149
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_16
    move-exception v28

    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_12

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :catch_17
    move-exception v28

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_12

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "frequency":F
    .restart local v26    # "line":Ljava/lang/String;
    :cond_31
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_f

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "frequency":F
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "fileReader":Ljava/io/FileReader;
    :cond_32
    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_a
.end method

.method private static native nativeGetThumbnail(Lorg/videolan/libvlc/Media;II)[B
.end method

.method private static readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 13
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x1

    .line 416
    iget v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_size:I

    new-array v2, v10, [B

    .line 417
    .local v2, "bytes":[B
    iget v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_offset:I

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 418
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 421
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 422
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 426
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    const/16 v11, 0x41

    if-eq v10, v11, :cond_8

    .line 427
    const/4 v9, 0x0

    .line 470
    :cond_0
    :goto_0
    return v9

    .line 431
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 432
    .local v6, "start_section":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 433
    .local v3, "length":I
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "vendor":Ljava/lang/String;
    const-string v10, "aeabi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 436
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v6, v3

    if-ge v10, v11, :cond_0

    .line 437
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 438
    .local v5, "start":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 439
    .local v7, "tag":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 441
    .local v4, "size":I
    if-eq v7, v9, :cond_3

    .line 442
    add-int v10, v5, v4

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 448
    :cond_2
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v7

    .line 449
    const/4 v10, 0x6

    if-ne v7, v10, :cond_4

    .line 450
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 451
    .local v0, "arch":I
    sget-object v10, Lorg/videolan/libvlc/util/VLCUtil;->CPU_archs:[Ljava/lang/String;

    aget-object v10, v10, v0

    iput-object v10, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_arch:Ljava/lang/String;

    .line 447
    .end local v0    # "arch":I
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int v11, v5, v4

    if-lt v10, v11, :cond_2

    goto :goto_1

    .line 452
    :cond_4
    const/16 v10, 0x1b

    if-ne v7, v10, :cond_5

    .line 453
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    .line 454
    iput-boolean v9, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->att_fpu:Z

    goto :goto_2

    .line 459
    :cond_5
    rem-int/lit16 v7, v7, 0x80

    .line 460
    const/4 v10, 0x4

    if-eq v7, v10, :cond_6

    const/4 v10, 0x5

    if-eq v7, v10, :cond_6

    if-eq v7, v12, :cond_6

    if-le v7, v12, :cond_7

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_7

    .line 461
    :cond_6
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_2

    .line 463
    :cond_7
    invoke-static {v1}, Lorg/videolan/libvlc/util/VLCUtil;->getUleb128(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 430
    .end local v3    # "length":I
    .end local v4    # "size":I
    .end local v5    # "start":I
    .end local v6    # "start_section":I
    .end local v7    # "tag":I
    .end local v8    # "vendor":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-gtz v10, :cond_1

    goto :goto_0
.end method

.method private static readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 8
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 366
    const/16 v4, 0x34

    new-array v1, v4, [B

    .line 367
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 368
    aget-byte v4, v1, v2

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    .line 369
    aget-byte v4, v1, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_0

    .line 370
    aget-byte v4, v1, v6

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_0

    .line 371
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_0

    .line 372
    aget-byte v4, v1, v7

    if-eq v4, v3, :cond_1

    aget-byte v4, v1, v7

    if-eq v4, v6, :cond_1

    .line 373
    :cond_0
    const-string v3, "VLC/LibVLC/Util"

    const-string v4, "ELF header invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 389
    :goto_0
    return v3

    .line 377
    :cond_1
    aget-byte v4, v1, v7

    if-ne v4, v6, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->is64bits:Z

    .line 378
    const/4 v2, 0x5

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_3

    .line 379
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 378
    :goto_1
    iput-object v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    .line 383
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 386
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I

    .line 387
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shoff:I

    .line 388
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    iput v2, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shnum:I

    goto :goto_0

    .line 380
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1
.end method

.method private static readLib(Ljava/io/File;)Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v2, 0x0

    .line 324
    .local v2, "in":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .local v3, "in":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/videolan/libvlc/util/VLCUtil$ElfData;-><init>(Lorg/videolan/libvlc/util/VLCUtil$ElfData;)V

    .line 327
    .local v1, "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    invoke-static {v3, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readHeader(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    .line 356
    if-eqz v3, :cond_0

    .line 357
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 361
    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    :goto_1
    return-object v1

    .line 330
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_3
    iget v5, v1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_machine:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sparse-switch v5, :sswitch_data_0

    .line 356
    if-eqz v3, :cond_2

    .line 357
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_2
    :goto_2
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 347
    goto :goto_1

    .line 356
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_0
    if-eqz v3, :cond_3

    .line 357
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    move-object v2, v3

    .line 335
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 337
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :sswitch_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 338
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 339
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :try_start_7
    invoke-static {v2, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    .line 356
    if-eqz v2, :cond_4

    .line 357
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_4
    move-object v1, v4

    .line 340
    goto :goto_1

    .line 341
    :cond_5
    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 342
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v3, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-static {v3, v1}, Lorg/videolan/libvlc/util/VLCUtil;->readArmAttributes(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v5

    if-nez v5, :cond_7

    .line 356
    if-eqz v3, :cond_6

    .line 357
    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_6
    :goto_5
    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    move-object v1, v4

    .line 344
    goto :goto_1

    .line 356
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :cond_7
    if-eqz v3, :cond_8

    .line 357
    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_8
    :goto_6
    move-object v2, v3

    .line 349
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 350
    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 356
    if-eqz v2, :cond_9

    .line 357
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_9
    :goto_8
    move-object v1, v4

    .line 361
    goto :goto_1

    .line 352
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 356
    if-eqz v2, :cond_9

    .line 357
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_8

    .line 358
    :catch_2
    move-exception v5

    goto :goto_8

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 356
    :goto_a
    if-eqz v2, :cond_a

    .line 357
    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 360
    :cond_a
    :goto_b
    throw v4

    .line 358
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v5

    goto :goto_0

    :catch_4
    move-exception v4

    goto :goto_3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v5

    goto :goto_4

    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v5

    goto :goto_5

    :catch_7
    move-exception v5

    goto :goto_2

    :catch_8
    move-exception v4

    goto :goto_6

    .end local v1    # "elf":Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v5

    goto :goto_8

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v5

    goto :goto_b

    .line 354
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 352
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 350
    .end local v2    # "in":Ljava/io/RandomAccessFile;
    .restart local v3    # "in":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/RandomAccessFile;
    .restart local v2    # "in":Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3e -> :sswitch_0
        0xb7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static readSection(Ljava/io/RandomAccessFile;Lorg/videolan/libvlc/util/VLCUtil$ElfData;)Z
    .locals 6
    .param p0, "in"    # Ljava/io/RandomAccessFile;
    .param p1, "elf"    # Lorg/videolan/libvlc/util/VLCUtil$ElfData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/16 v4, 0x28

    new-array v1, v4, [B

    .line 394
    .local v1, "bytes":[B
    iget v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shoff:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->e_shnum:I

    if-lt v2, v4, :cond_0

    .line 412
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 397
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 400
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 401
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 403
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 404
    .local v3, "sh_type":I
    const v4, 0x70000003

    if-eq v3, v4, :cond_1

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_offset:I

    .line 408
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    iput v4, p1, Lorg/videolan/libvlc/util/VLCUtil$ElfData;->sh_size:I

    .line 409
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static searchLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;
    .locals 8
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 289
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 290
    const-string v6, "java.library.path"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "property":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 299
    .end local v3    # "property":Ljava/lang/String;
    .local v2, "libraryPaths":[Ljava/lang/String;
    :goto_0
    aget-object v6, v2, v5

    if-nez v6, :cond_3

    .line 300
    const-string v5, "VLC/LibVLC/Util"

    const-string v6, "can\'t find library path"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 312
    :cond_0
    :goto_1
    return-object v0

    .line 293
    .end local v2    # "libraryPaths":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    .line 294
    .restart local v2    # "libraryPaths":[Ljava/lang/String;
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isGingerbreadOrLater()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v6, v2, v5

    goto :goto_0

    .line 297
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_0

    .line 306
    :cond_3
    array-length v6, v2

    :goto_2
    if-lt v5, v6, :cond_4

    .line 311
    const-string v5, "VLC/LibVLC/Util"

    const-string v6, "WARNING: Can\'t find shared library"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 312
    goto :goto_1

    .line 306
    :cond_4
    aget-object v1, v2, v5

    .line 307
    .local v1, "libraryPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v7, "libvlcjni.so"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v0, "lib":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_0

    .line 306
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

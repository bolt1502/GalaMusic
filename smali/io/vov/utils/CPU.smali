.class public Lio/vov/utils/CPU;
.super Ljava/lang/Object;
.source "CPU.java"


# static fields
.field public static final FEATURE_ARM_NEON:I = 0x20

.field public static final FEATURE_ARM_V5TE:I = 0x1

.field public static final FEATURE_ARM_V6:I = 0x2

.field public static final FEATURE_ARM_V7A:I = 0x8

.field public static final FEATURE_ARM_VFP:I = 0x4

.field public static final FEATURE_ARM_VFPV3:I = 0x10

.field private static cachedFeature:I

.field private static cachedFeatureString:Ljava/lang/String;

.field private static final cpuinfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    .line 30
    const/4 v0, -0x1

    sput v0, Lio/vov/utils/CPU;->cachedFeature:I

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lio/vov/utils/CPU;->cachedFeatureString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCachedFeature()I
    .locals 5

    .prologue
    .line 130
    sget-object v1, Lio/vov/utils/CPU;->cachedFeatureString:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 133
    const-string v1, "V5TE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_1

    .line 135
    const-string v1, "V6 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_1
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    .line 137
    const-string v1, "VFP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_2
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_3

    .line 139
    const-string v1, "V7A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_3
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_4

    .line 141
    const-string v1, "VFPV3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_4
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    and-int/lit8 v1, v1, 0x20

    if-lez v1, :cond_5

    .line 143
    const-string v1, "NEON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/vov/utils/CPU;->cachedFeatureString:Ljava/lang/String;

    .line 146
    :cond_6
    const-string v1, "GET CPU FATURE: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lio/vov/utils/CPU;->cachedFeatureString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/vov/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget v1, Lio/vov/utils/CPU;->cachedFeature:I

    return v1
.end method

.method public static getFeature()I
    .locals 16

    .prologue
    .line 45
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    if-lez v11, :cond_0

    .line 46
    invoke-static {}, Lio/vov/utils/CPU;->getCachedFeature()I

    move-result v11

    .line 126
    :goto_0
    return v11

    .line 48
    :cond_0
    const/4 v11, 0x1

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    .line 50
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "bis":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    new-instance v12, Ljava/io/File;

    const-string v13, "/proc/cpuinfo"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v0    # "bis":Ljava/io/BufferedReader;
    .local v1, "bis":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_d

    .line 68
    if-eqz v1, :cond_2

    .line 69
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 76
    .end local v1    # "bis":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v0    # "bis":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    .end local v0    # "bis":Ljava/io/BufferedReader;
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 77
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v7, "key":Ljava/lang/String;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_f

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, "hasARMv6":Z
    const/4 v5, 0x0

    .line 83
    .local v5, "hasARMv7":Z
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    .end local v7    # "key":Ljava/lang/String;
    const-string v12, "CPU architecture"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 84
    .local v10, "val":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 86
    :try_start_3
    invoke-static {v10}, Lio/vov/utils/StringUtils;->convertToInt(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "i":I
    const-string v11, "CPU architecture: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lio/vov/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 88
    const/4 v11, 0x7

    if-lt v6, v11, :cond_10

    .line 89
    const/4 v4, 0x1

    .line 90
    const/4 v5, 0x1

    .line 100
    .end local v6    # "i":I
    :cond_3
    :goto_4
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    const-string v12, "Processor"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "val":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 101
    .restart local v10    # "val":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v11, "(v7l)"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    const-string v11, "ARMv7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 102
    :cond_5
    const/4 v4, 0x1

    .line 103
    const/4 v5, 0x1

    .line 105
    :cond_6
    if-eqz v10, :cond_7

    const-string v11, "(v6l)"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    const-string v11, "ARMv6"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 106
    :cond_8
    const/4 v4, 0x1

    .line 107
    const/4 v5, 0x0

    .line 110
    :cond_9
    if-eqz v4, :cond_a

    .line 111
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    or-int/lit8 v11, v11, 0x2

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    .line 112
    :cond_a
    if-eqz v5, :cond_b

    .line 113
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    or-int/lit8 v11, v11, 0x8

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    .line 115
    :cond_b
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    const-string v12, "Features"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "val":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 116
    .restart local v10    # "val":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 117
    const-string v11, "neon"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 118
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    or-int/lit8 v11, v11, 0x34

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    .line 126
    :cond_c
    :goto_5
    invoke-static {}, Lio/vov/utils/CPU;->getCachedFeature()I

    move-result v11

    goto/16 :goto_0

    .line 57
    .end local v4    # "hasARMv6":Z
    .end local v5    # "hasARMv7":Z
    .end local v10    # "val":Ljava/lang/String;
    .restart local v1    # "bis":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_d
    const/4 v11, 0x0

    :try_start_4
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v11}, Lio/vov/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 59
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "pairs":[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 61
    sget-object v11, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v9, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 64
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "pairs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 65
    .end local v1    # "bis":Ljava/io/BufferedReader;
    .restart local v0    # "bis":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    const-string v11, "getCPUFeature"

    invoke-static {v11, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 70
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "getCPUFeature"

    invoke-static {v11, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 68
    :goto_7
    if-eqz v0, :cond_e

    .line 69
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 73
    :cond_e
    :goto_8
    throw v11

    .line 70
    :catch_2
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v12, "getCPUFeature"

    invoke-static {v12, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 70
    .end local v0    # "bis":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "getCPUFeature"

    invoke-static {v11, v2}, Lio/vov/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 77
    .end local v1    # "bis":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "key":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 78
    .restart local v7    # "key":Ljava/lang/String;
    const-string v12, "%s:%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lio/vov/utils/CPU;->cpuinfo:Ljava/util/Map;

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lio/vov/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 91
    .end local v7    # "key":Ljava/lang/String;
    .restart local v4    # "hasARMv6":Z
    .restart local v5    # "hasARMv7":Z
    .restart local v6    # "i":I
    .restart local v10    # "val":Ljava/lang/String;
    :cond_10
    const/4 v11, 0x6

    if-lt v6, v11, :cond_3

    .line 92
    const/4 v4, 0x1

    .line 93
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 95
    .end local v6    # "i":I
    :catch_4
    move-exception v3

    .line 96
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v11, "getCPUFeature"

    invoke-static {v11, v3}, Lio/vov/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 119
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_11
    const-string v11, "vfpv3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 120
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    or-int/lit8 v11, v11, 0x14

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    goto/16 :goto_5

    .line 121
    :cond_12
    const-string v11, "vfp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 122
    sget v11, Lio/vov/utils/CPU;->cachedFeature:I

    or-int/lit8 v11, v11, 0x4

    sput v11, Lio/vov/utils/CPU;->cachedFeature:I

    goto/16 :goto_5

    .line 66
    .end local v4    # "hasARMv6":Z
    .end local v5    # "hasARMv7":Z
    .end local v10    # "val":Ljava/lang/String;
    .restart local v1    # "bis":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedReader;
    .restart local v0    # "bis":Ljava/io/BufferedReader;
    goto :goto_7

    .line 64
    :catch_5
    move-exception v2

    goto :goto_6
.end method

.method public static getFeatureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lio/vov/utils/CPU;->getFeature()I

    .line 41
    sget-object v0, Lio/vov/utils/CPU;->cachedFeatureString:Ljava/lang/String;

    return-object v0
.end method

.method public static isDroidXDroid2()Z
    .locals 2

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DROIDX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DROID2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "droid2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

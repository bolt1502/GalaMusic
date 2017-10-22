.class public Lorg/qtproject/qt5/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# static fields
.field public static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Landroid/app/Activity;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static m_clipboardManager:Landroid/text/ClipboardManager;

.field private static m_displayMetricsDesktopHeightPixels:I

.field private static m_displayMetricsDesktopWidthPixels:I

.field private static m_displayMetricsScaledDensity:D

.field private static m_displayMetricsScreenHeightPixels:I

.field private static m_displayMetricsScreenWidthPixels:I

.field private static m_displayMetricsXDpi:D

.field private static m_displayMetricsYDpi:D

.field private static m_lostActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static m_mainActivityMutex:Ljava/lang/Object;

.field private static final m_moveThreshold:I

.field private static m_oldx:I

.field private static m_oldy:I

.field private static m_started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    .line 73
    sput-boolean v1, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    .line 74
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 75
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 76
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    .line 77
    sput v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    .line 78
    sput-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    .line 79
    sput-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    .line 80
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 83
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    .line 85
    sput-object v2, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Landroid/text/ClipboardManager;)V
    .locals 0

    .prologue
    .line 83
    sput-object p0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 98
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static clearLostActions()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    return-void
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .locals 6
    .param p0, "index"    # I
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 297
    .local v0, "action":I
    if-ne v0, v2, :cond_3

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 299
    .local v1, "hsz":I
    if-lez v1, :cond_2

    .line 300
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, p0, v5}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 301
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, p0, v5}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 314
    .end local v1    # "hsz":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "hsz":I
    :cond_2
    move v2, v3

    .line 307
    goto :goto_0

    .line 309
    .end local v1    # "hsz":I
    :cond_3
    if-eqz v0, :cond_4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_5

    .line 310
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 311
    :cond_5
    if-eq v0, v3, :cond_6

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ne p0, v3, :cond_1

    .line 312
    :cond_6
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getClipboardText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLostActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getSSLCertificates()[[B
    .locals 16

    .prologue
    const/4 v10, 0x0

    .line 433
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v4, "certificateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .line 437
    .local v6, "factory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 439
    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    array-length v13, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v10

    :goto_0
    if-lt v11, v13, :cond_0

    .line 453
    .end local v6    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [[B

    .line 454
    .local v3, "certificateArray":[[B
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "certificateArray":[[B
    check-cast v3, [[B

    .line 455
    .restart local v3    # "certificateArray":[[B
    return-object v3

    .line 439
    .end local v3    # "certificateArray":[[B
    .restart local v6    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    :try_start_1
    aget-object v7, v12, v11

    .line 440
    .local v7, "manager":Ljavax/net/ssl/TrustManager;
    instance-of v9, v7, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_1

    .line 441
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    move-object v8, v0

    .line 443
    .local v8, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v8}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v14

    array-length v15, v14

    move v9, v10

    :goto_2
    if-lt v9, v15, :cond_2

    .line 439
    .end local v8    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_0

    .line 443
    .restart local v8    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    aget-object v2, v14, v9

    .line 444
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 445
    .local v1, "buffer":[B
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 449
    .end local v1    # "buffer":[B
    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v6    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v7    # "manager":Ljavax/net/ssl/TrustManager;
    .end local v8    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v5

    .line 450
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "Qt JAVA"

    const-string v10, "Failed to get certificates"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static native handleOrientationChanged(II)V
.end method

.method private static hasClipboardText()Z
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public static native keyDown(III)V
.end method

.method public static native keyUp(III)V
.end method

.method public static native keyboardVisibilityChanged(Z)V
.end method

.method public static loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "libraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Qt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "libraries size()::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dir::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-nez p0, :cond_1

    .line 184
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "libName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 177
    :goto_1
    const-string v4, "Qt JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Load lib \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 178
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Qt JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 180
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Error;
    const-string v4, "Qt JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static loadQtLibraries(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "libraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 131
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "libName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 125
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "Qt JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Qt JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t load \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static loadQtLocalLibraries(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 8
    .param p1, "locaLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "libraries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 135
    if-nez p0, :cond_0

    .line 157
    :goto_0
    return v4

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 157
    const/4 v4, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "libName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 146
    .end local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "Qt JAVA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t load \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 149
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Qt JAVA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t load \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Error;
    const-string v5, "Qt JAVA"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t load \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static native longPress(III)V
.end method

.method public static native mouseDown(III)V
.end method

.method public static native mouseMove(III)V
.end method

.method public static native mouseUp(III)V
.end method

.method public static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public static native onContextItemSelected(IZ)Z
.end method

.method public static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onOptionsItemSelected(IZ)Z
.end method

.method public static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public static openURL(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static quitApp()V
    .locals 2

    .prologue
    .line 289
    const-string v0, "Qt"

    const-string v1, "------------Qt call static finish() method---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method public static native quitQtAndroidPlugin()V
.end method

.method private static registerClipboardManager()V
    .locals 3

    .prologue
    .line 401
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 402
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    new-instance v2, Lorg/qtproject/qt5/android/QtNative$1;

    invoke-direct {v2, v1}, Lorg/qtproject/qt5/android/QtNative$1;-><init>(Ljava/util/concurrent/Semaphore;)V

    invoke-static {v2}, Lorg/qtproject/qt5/android/QtNative;->runAction(Ljava/lang/Runnable;)Z

    .line 410
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static runAction(Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 198
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_0
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v1

    return v0

    .line 202
    :cond_0
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x5

    .line 350
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 352
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseUp(III)V

    goto :goto_0

    .line 356
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseDown(III)V

    .line 357
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 358
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_0

    .line 362
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 363
    .local v0, "dx":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 364
    .local v1, "dy":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseMove(III)V

    .line 366
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 367
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x5

    .line 376
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseUp(III)V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseDown(III)V

    .line 383
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 384
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_0

    .line 388
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 389
    .local v0, "dx":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 390
    .local v1, "dy":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v4, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p1, v2, v3}, Lorg/qtproject/qt5/android/QtNative;->mouseMove(III)V

    .line 392
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldx:I

    .line 393
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sput v2, Lorg/qtproject/qt5/android/QtNative;->m_oldy:I

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setApplicationDisplayMetrics(IIIIDDD)V
    .locals 4
    .param p0, "screenWidthPixels"    # I
    .param p1, "screenHeightPixels"    # I
    .param p2, "desktopWidthPixels"    # I
    .param p3, "desktopHeightPixels"    # I
    .param p4, "XDpi"    # D
    .param p6, "YDpi"    # D
    .param p8, "scaledDensity"    # D

    .prologue
    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    .line 252
    cmpg-double v0, p4, v2

    if-gez v0, :cond_0

    .line 253
    const-wide/high16 p4, 0x405e000000000000L    # 120.0

    .line 254
    :cond_0
    cmpg-double v0, p6, v2

    if-gez v0, :cond_1

    .line 255
    const-wide/high16 p6, 0x405e000000000000L    # 120.0

    .line 257
    :cond_1
    sget-object v1, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    sget-boolean v0, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    if-eqz v0, :cond_2

    .line 259
    invoke-static/range {p0 .. p9}, Lorg/qtproject/qt5/android/QtNative;->setDisplayMetrics(IIIIDDD)V

    .line 257
    :goto_0
    monitor-exit v1

    .line 276
    return-void

    .line 267
    :cond_2
    sput p0, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 268
    sput p1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 269
    sput p2, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    .line 270
    sput p3, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    .line 271
    sput-wide p4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    .line 272
    sput-wide p6, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    .line 273
    sput-wide p8, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 93
    sput-object p0, Lorg/qtproject/qt5/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 94
    return-void
.end method

.method private static setClipboardText(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lorg/qtproject/qt5/android/QtNative;->m_clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method public static native setDisplayMetrics(IIIIDDD)V
.end method

.method public static native setSurface(ILjava/lang/Object;II)V
.end method

.method public static startApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "params"    # Ljava/lang/String;
    .param p1, "environment"    # Ljava/lang/String;
    .param p2, "mainLibrary"    # Ljava/lang/String;
    .param p3, "nativeLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v10, "f":Ljava/io/File;
    const-string v0, "Qt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "main lib :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v10, Ljava/io/File;

    .end local v10    # "f":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/lib/lib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v10    # "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find main library \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p0, :cond_1

    .line 222
    const-string p0, "-platform\tandroid"

    .line 224
    :cond_1
    const/4 v11, 0x0

    .line 225
    .local v11, "res":Z
    sget-object v12, Lorg/qtproject/qt5/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v12

    .line 226
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt5/android/QtNative;->startQtAndroidPlugin()Z

    move-result v11

    .line 227
    sget v0, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 228
    sget v1, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 229
    sget v2, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopWidthPixels:I

    .line 230
    sget v3, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsDesktopHeightPixels:I

    .line 231
    sget-wide v4, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsXDpi:D

    .line 232
    sget-wide v6, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsYDpi:D

    .line 233
    sget-wide v8, Lorg/qtproject/qt5/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 227
    invoke-static/range {v0 .. v9}, Lorg/qtproject/qt5/android/QtNative;->setDisplayMetrics(IIIIDDD)V

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 236
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/qtproject/qt5/android/QtNative;->startQtApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lorg/qtproject/qt5/android/QtNative;->m_started:Z

    .line 238
    const-string v0, "Qt"

    const-string v1, "qt is start!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v12

    .line 240
    return v11

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static native startQtAndroidPlugin()Z
.end method

.method public static native startQtApplication(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native terminateQt()V
.end method

.method public static native touchAdd(IIIZIIFF)V
.end method

.method public static native touchBegin(I)V
.end method

.method public static native touchEnd(II)V
.end method

.method public static native updateApplicationState(I)V
.end method

.method public static native updateWindow()V
.end method

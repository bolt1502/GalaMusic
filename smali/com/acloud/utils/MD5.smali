.class public Lcom/acloud/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/acloud/utils/MD5;->HEX_DIGITS:[C

    .line 11
    return-void

    .line 10
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 30
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 31
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 33
    .local v0, "m":[B
    invoke-static {v0}, Lcom/acloud/utils/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMD5Sun(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "fis"    # Ljava/io/InputStream;

    .prologue
    .line 58
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 59
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 61
    .local v3, "numRead":I
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 62
    .local v2, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 66
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/acloud/utils/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 68
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :goto_1
    return-object v4

    .line 63
    .restart local v2    # "md5":Ljava/security/MessageDigest;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_1
.end method

.method public static getMD5Sun(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "fis":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/acloud/utils/MD5;->getMD5Sun(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .end local v0    # "fis":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v1

    .line 48
    const-string v1, ""

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 16
    :cond_0
    sget-object v2, Lcom/acloud/utils/MD5;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    sget-object v2, Lcom/acloud/utils/MD5;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

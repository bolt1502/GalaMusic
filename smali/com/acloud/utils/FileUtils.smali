.class public Lcom/acloud/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/high16 v3, 0x200000

    .line 78
    .local v3, "length":I
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v1, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 81
    .local v2, "inC":Ljava/nio/channels/FileChannel;
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 82
    .local v5, "outC":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 84
    .local v0, "b":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 85
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 86
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v8, v3

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 90
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 93
    :goto_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v5, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 97
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    goto :goto_1

    .line 92
    :cond_3
    const/high16 v3, 0x200000

    goto :goto_2
.end method

.method public static fileChannelCopy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v8, 0x0

    .line 34
    .local v8, "fi":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 35
    .local v10, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 37
    .local v6, "out":Ljava/nio/channels/FileChannel;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v12, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .local v9, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .local v11, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 43
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 44
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    if-eqz v9, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 52
    :cond_2
    if-eqz v1, :cond_3

    .line 53
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 55
    :cond_3
    if-eqz v11, :cond_4

    .line 56
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_4
    if-eqz v6, :cond_c

    .line 59
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v11

    .end local v11    # "fo":Ljava/io/FileOutputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    move-object v8, v9

    .line 61
    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_0

    .line 45
    :catch_0
    move-exception v7

    .line 46
    .local v7, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    if-eqz v8, :cond_5

    .line 50
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 52
    :cond_5
    if-eqz v1, :cond_6

    .line 53
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 55
    :cond_6
    if-eqz v10, :cond_7

    .line 56
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_7
    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v7

    .line 62
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 49
    :goto_2
    if-eqz v8, :cond_8

    .line 50
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 52
    :cond_8
    if-eqz v1, :cond_9

    .line 53
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 55
    :cond_9
    if-eqz v10, :cond_a

    .line 56
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 58
    :cond_a
    if-eqz v6, :cond_b

    .line 59
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 64
    :cond_b
    :goto_3
    throw v2

    .line 61
    :catch_2
    move-exception v7

    .line 62
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 61
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v11    # "fo":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 62
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    :cond_c
    move-object v10, v11

    .end local v11    # "fo":Ljava/io/FileOutputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_0

    .line 47
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v11    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "fo":Ljava/io/FileOutputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .line 45
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v8, v9

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v11    # "fo":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    move-object v10, v11

    .end local v11    # "fo":Ljava/io/FileOutputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    move-object v8, v9

    .end local v9    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    goto :goto_1
.end method

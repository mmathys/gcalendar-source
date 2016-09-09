.class public final Lcom/google/android/libraries/social/licenses/Licenses;
.super Ljava/lang/Object;
.source "Licenses.java"


# direct methods
.method public static getLicenseText(Landroid/content/Context;Lcom/google/android/libraries/social/licenses/License;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/google/android/libraries/social/licenses/License;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    sget v1, Lcom/google/android/libraries/social/licenses/R$id;->dummy_placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "third_party_licenses"

    const-string v3, "raw"

    .line 112
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Lcom/google/android/libraries/social/licenses/Licenses;->getLicenseTextFromInputStream(Lcom/google/android/libraries/social/licenses/License;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    const/4 v2, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-virtual {p1}, Lcom/google/android/libraries/social/licenses/License;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    const-string v0, "res/raw/third_party_licenses"

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/google/android/libraries/social/licenses/Licenses;->getLicenseTextFromInputStream(Lcom/google/android/libraries/social/licenses/License;Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 125
    if-eqz v1, :cond_0

    .line 127
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 123
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to read license text for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 127
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 130
    :cond_2
    :goto_3
    throw v0

    .line 128
    :catch_2
    move-exception v1

    goto :goto_3

    .line 125
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 122
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static getLicenseTextFromInputStream(Lcom/google/android/libraries/social/licenses/License;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/libraries/social/licenses/License;->getLicenseLength()I

    move-result v0

    new-array v1, v0, [B

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/social/licenses/License;->getLicenseOffset()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 144
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    add-int/2addr v0, v2

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to read license text for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported encoding UTF8. This should always be supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLicenses(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/social/licenses/License;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 39
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.libraries.social.licenses.MetadataHolder"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x280

    .line 40
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/libraries/social/licenses/Licenses;->getLicensesFromServiceInfo(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not find application info for package: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 46
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getLicensesFromServiceInfo(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ServiceInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/social/licenses/License;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 82
    if-eqz p0, :cond_5

    .line 83
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    move-object v1, v0

    .line 85
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const-string v0, "com.google.android.libraries.social.licenses.LICENSE."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 87
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    const-string v2, "com.google.android.libraries.social.licenses.LICENSE."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 90
    array-length v2, v9

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_3
    const-string v10, "Invalid license meta-data value for element: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-static {v2, v5}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 92
    aget-object v2, v9, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 93
    aget-object v2, v9, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11, v2, p1}, Lcom/google/android/libraries/social/licenses/License;->create(Ljava/lang/String;JILjava/lang/String;)Lcom/google/android/libraries/social/licenses/License;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_1
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    move v2, v4

    .line 90
    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 98
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 99
    return-object v6

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

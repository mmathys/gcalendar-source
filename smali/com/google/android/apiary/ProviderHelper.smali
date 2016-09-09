.class public Lcom/google/android/apiary/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# direct methods
.method public static applyBatchProvider(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lcom/google/android/apiary/ParseException;

    invoke-direct {v1, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static bulkInsertProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Lcom/google/android/apiary/ParseException;

    invoke-direct {v1, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static insertProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lcom/google/android/apiary/ParseException;

    invoke-direct {v1, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static queryProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/android/apiary/ParseException;

    invoke-direct {v1, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static updateProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lcom/google/android/apiary/ParseException;

    invoke-direct {v1, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class public interface abstract Lcom/google/android/apiary/ItemAndEntityHandler;
.super Ljava/lang/Object;
.source "ItemAndEntityHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDeletedColumnName()Ljava/lang/String;
.end method

.method public abstract getEntitySelection()Ljava/lang/String;
.end method

.method public abstract getEntityUri()Landroid/net/Uri;
.end method

.method public abstract itemToSourceId(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation
.end method

.method public abstract sendEntityToServer(Landroid/content/Entity;Landroid/content/SyncResult;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Landroid/content/SyncResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

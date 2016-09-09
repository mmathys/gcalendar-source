.class public interface abstract Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;
.super Ljava/lang/Object;
.source "DataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/data/DataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataChangedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDataChanged(ILjava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

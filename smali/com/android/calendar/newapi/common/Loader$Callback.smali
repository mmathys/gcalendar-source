.class public interface abstract Lcom/android/calendar/newapi/common/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/common/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/android/calendar/newapi/common/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/common/Loader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method public abstract isFinished()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract load()V
.end method

.method public abstract setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V
.end method

.class public interface abstract Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
.super Ljava/lang/Object;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/DataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation


# virtual methods
.method public abstract getListenerTag()I
.end method

.method public abstract getListenerTagType()I
.end method

.method public abstract onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end method

.method public abstract postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end method

.method public abstract setListenerTag(I)V
.end method

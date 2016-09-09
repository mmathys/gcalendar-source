.class public interface abstract Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInfoChangedListener"
.end annotation


# virtual methods
.method public abstract beforeDeleteInitiated(Landroid/app/DialogFragment;)V
.end method

.method public abstract onDeleteComplete(Landroid/app/DialogFragment;I)V
.end method

.method public abstract onInfoBack(Landroid/app/DialogFragment;Z)V
.end method

.method public abstract onInfoCancel(Landroid/app/DialogFragment;Z)V
.end method

.method public abstract onInfoDoEdit(Ljava/lang/Object;)V
.end method

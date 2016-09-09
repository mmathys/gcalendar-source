.class public interface abstract Lcom/android/calendar/event/EventInfoFragment$Screen;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Screen"
.end annotation


# virtual methods
.method public abstract getHeader()Landroid/view/View;
.end method

.method public abstract getTitleViewId()I
.end method

.method public abstract onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end method

.method public abstract onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end method

.method public abstract onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end method

.method public abstract onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
.end method

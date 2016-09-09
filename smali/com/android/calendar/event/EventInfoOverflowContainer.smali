.class public interface abstract Lcom/android/calendar/event/EventInfoOverflowContainer;
.super Ljava/lang/Object;
.source "EventInfoOverflowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EventInfoOverflowContainer$Config;,
        Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/android/calendar/event/EventInfoOverflowContainer$1;

    invoke-direct {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/EventInfoOverflowContainer;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    return-void
.end method


# virtual methods
.method public abstract onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
.end method

.method public abstract setOnMenuItemClickedListener(Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;)V
.end method

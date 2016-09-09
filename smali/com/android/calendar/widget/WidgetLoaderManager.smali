.class public Lcom/android/calendar/widget/WidgetLoaderManager;
.super Ljava/lang/Object;
.source "WidgetLoaderManager.java"


# instance fields
.field final mWidgetEventLoader:Lcom/android/calendar/widget/WidgetEventLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "CalendarWidget"

    const-string v1, "initLoader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    new-instance v0, Lcom/android/calendar/widget/WidgetEventLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/widget/WidgetEventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetLoaderManager;->mWidgetEventLoader:Lcom/android/calendar/widget/WidgetEventLoader;

    .line 43
    return-void
.end method

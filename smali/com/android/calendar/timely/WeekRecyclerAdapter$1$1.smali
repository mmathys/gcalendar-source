.class Lcom/android/calendar/timely/WeekRecyclerAdapter$1$1;
.super Ljava/lang/Object;
.source "WeekRecyclerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/WeekRecyclerAdapter$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/WeekRecyclerAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/WeekRecyclerAdapter$1;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter$1$1;->this$1:Lcom/android/calendar/timely/WeekRecyclerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 193
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 194
    return-void
.end method

.class Lcom/android/calendar/AllInOneCalendarActivity$9$2;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$9;->handlePendingDrawerAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$9;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$9$2;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$9$2;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$9;

    iget-object v0, v0, Lcom/android/calendar/AllInOneCalendarActivity$9;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v1, -0x1

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPendingDrawerActionId:I
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1802(Lcom/android/calendar/AllInOneCalendarActivity;I)I

    .line 875
    return-void
.end method

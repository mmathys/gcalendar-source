.class Lcom/android/calendar/AllInOneCalendarActivity$11;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$11;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$11;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mCreateFabStack:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->hideCreateFab()V

    .line 1052
    return-void
.end method

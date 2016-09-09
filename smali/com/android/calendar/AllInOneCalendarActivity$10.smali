.class Lcom/android/calendar/AllInOneCalendarActivity$10;
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
    .line 1009
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$10;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$10;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mGlobalLayoutFinished:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2502(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 1013
    return-void
.end method

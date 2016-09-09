.class Lcom/android/calendar/timely/DelayedUpdateHelper$1;
.super Ljava/lang/Object;
.source "DelayedUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DelayedUpdateHelper;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

.field final synthetic val$data:Lcom/android/calendar/timely/MonthData;

.field final synthetic val$forceShow:Z

.field final synthetic val$julianDay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DelayedUpdateHelper;Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    iput-object p2, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iput p3, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$julianDay:I

    iput-boolean p4, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$forceShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->this$0:Lcom/android/calendar/timely/DelayedUpdateHelper;

    # getter for: Lcom/android/calendar/timely/DelayedUpdateHelper;->mOnUpdateListener:Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
    invoke-static {v0}, Lcom/android/calendar/timely/DelayedUpdateHelper;->access$000(Lcom/android/calendar/timely/DelayedUpdateHelper;)Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$data:Lcom/android/calendar/timely/MonthData;

    iget v2, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$julianDay:I

    iget-boolean v3, p0, Lcom/android/calendar/timely/DelayedUpdateHelper$1;->val$forceShow:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 47
    return-void
.end method

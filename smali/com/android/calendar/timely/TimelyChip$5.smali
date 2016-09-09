.class Lcom/android/calendar/timely/TimelyChip$5;
.super Ljava/lang/Object;
.source "TimelyChip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChip;->launchDetails()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChip;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 2400
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip$5;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip$5;->this$0:Lcom/android/calendar/timely/TimelyChip;

    # invokes: Lcom/android/calendar/timely/TimelyChip;->launchDetailsImpl()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChip;->access$100(Lcom/android/calendar/timely/TimelyChip;)V

    .line 2404
    return-void
.end method

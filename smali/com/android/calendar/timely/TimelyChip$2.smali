.class Lcom/android/calendar/timely/TimelyChip$2;
.super Ljava/lang/Object;
.source "TimelyChip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChip;->updateInteractionListeners()V
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
    .line 742
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip$2;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip$2;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->launchDetails()Z

    .line 746
    return-void
.end method

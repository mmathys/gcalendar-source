.class Lcom/android/calendar/groove/GrooveContractEditSegment$2;
.super Ljava/lang/Object;
.source "GrooveContractEditSegment.java"

# interfaces
.implements Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/GrooveContractEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveContractEditSegment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$2;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomDurationDialogCancel()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onCustomDurationSet(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment$2;->this$0:Lcom/android/calendar/groove/GrooveContractEditSegment;

    # invokes: Lcom/android/calendar/groove/GrooveContractEditSegment;->refreshDurationSpinner(I)V
    invoke-static {v0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->access$300(Lcom/android/calendar/groove/GrooveContractEditSegment;I)V

    .line 65
    return-void
.end method

.class Lcom/android/calendar/event/segment/ClickableSegment$1;
.super Ljava/lang/Object;
.source "ClickableSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/segment/ClickableSegment;->enableAction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/segment/ClickableSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/segment/ClickableSegment;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/event/segment/ClickableSegment$1;->this$0:Lcom/android/calendar/event/segment/ClickableSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment$1;->this$0:Lcom/android/calendar/event/segment/ClickableSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/segment/ClickableSegment;->logClick()V

    .line 73
    iget-object v0, p0, Lcom/android/calendar/event/segment/ClickableSegment$1;->this$0:Lcom/android/calendar/event/segment/ClickableSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/segment/ClickableSegment;->startAction()V

    .line 74
    return-void
.end method

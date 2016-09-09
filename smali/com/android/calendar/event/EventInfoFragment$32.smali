.class Lcom/android/calendar/event/EventInfoFragment$32;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onEventLoaded(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 3658
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$32;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$32;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    .line 3662
    return-void
.end method

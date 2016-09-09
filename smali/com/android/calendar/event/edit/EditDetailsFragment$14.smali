.class Lcom/android/calendar/event/edit/EditDetailsFragment$14;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->postUpdateAuxiliaryViewLayoutParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$14;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$14;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->updateAuxiliaryViewLayoutParams()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2100(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 1671
    return-void
.end method

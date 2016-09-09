.class Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 698
    packed-switch p2, :pswitch_data_0

    .line 704
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    # getter for: Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mMultipleModification:I
    invoke-static {v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->access$000(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)I

    move-result v0

    .line 707
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    # getter for: Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->access$100(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$2;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    # getter for: Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->mListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->access$100(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;->onModificationSelected(I)V

    .line 710
    :cond_0
    return-void

    .line 700
    :pswitch_0
    const/4 v0, 0x1

    .line 701
    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

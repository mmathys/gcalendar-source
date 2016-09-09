.class Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$1;
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
    .line 713
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$1;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$1;->this$0:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->dismiss()V

    .line 717
    return-void
.end method

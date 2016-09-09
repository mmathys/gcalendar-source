.class public Lcom/android/calendar/event/CustomDurationDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CustomDurationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mArgs:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    .line 292
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    const-string v1, "duration_in_minutes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    return-void
.end method


# virtual methods
.method public build()Lcom/android/calendar/event/CustomDurationDialog;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/android/calendar/event/CustomDurationDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/CustomDurationDialog;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 333
    return-object v0
.end method

.method public setMaximumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    const-string v1, "max_duration_in_minutes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    return-object p0
.end method

.method public setMaximumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    const-string v1, "max_duration_error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    return-object p0
.end method

.method public setMinimumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    const-string v1, "min_duration_in_minutes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    return-object p0
.end method

.method public setMinimumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$Builder;->mArgs:Landroid/os/Bundle;

    const-string v1, "min_duration_error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    return-object p0
.end method

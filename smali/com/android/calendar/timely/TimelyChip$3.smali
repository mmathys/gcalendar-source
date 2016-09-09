.class Lcom/android/calendar/timely/TimelyChip$3;
.super Ljava/lang/Object;
.source "TimelyChip.java"

# interfaces
.implements Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChip;->setContactPhoto(Lcom/android/calendar/timely/ContactPhotoRequestKey;)V
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
    .line 908
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip$3;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoContactPhotoFound()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip$3;->this$0:Lcom/android/calendar/timely/TimelyChip;

    # getter for: Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChip;->access$000(Lcom/android/calendar/timely/TimelyChip;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip$3;->this$0:Lcom/android/calendar/timely/TimelyChip;

    # getter for: Lcom/android/calendar/timely/TimelyChip;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChip;->access$000(Lcom/android/calendar/timely/TimelyChip;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->unbind()V

    .line 914
    :cond_0
    return-void
.end method

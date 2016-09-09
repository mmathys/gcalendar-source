.class Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;
.super Ljava/lang/Object;
.source "FindTimeAttendeeInfoView.java"

# interfaces
.implements Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->onUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$finalDisplayName:Ljava/lang/String;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->this$0:Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$finalDisplayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoContactPhotoFound()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->this$0:Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    # getter for: Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mContactPhotoDrawable:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->access$000(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;)Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->unbind()V

    .line 67
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$finalDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/timely/LetterTileDrawable;->isValidLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/calendar/timely/LetterTileDrawable;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/LetterTileDrawable;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$finalDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/LetterTileDrawable;->setLetterAndColor(Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/LetterTileDrawable;

    .line 70
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->this$0:Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    # getter for: Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->access$100(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->this$0:Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    # getter for: Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->mPhotoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->access$100(Lcom/android/calendar/timely/FindTimeAttendeeInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView$1;->val$res:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$drawable;->find_time_default_attendee:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

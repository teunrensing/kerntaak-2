@extends('front-end.layout')

@section('content')
<div id="main">
			
			<div class="container">
				<section>
					<header>
						<h2>In posuere eleifend odio quisque emper augue maecenas ligula congue rutrum.</h2>
					</header>
					<div class="row">
						<div class="4u">
							<section>
								<a href="#" class="image full"><img src="{{ asset('images/pics01.jpg') }}" alt=""></a>
								<p>Pellentesque tristique ante ut risus. Quisque dictum. Integer sagittis convallis, rutrum elementum congue, nibh. Suspendisse dictum porta lectus.</p>
								<a href="#" class="button">View Full Details</a>
							</section>
						</div>
						<div class="4u">
							<section>
								<a href="#" class="image full"><img src="{{ asset('images/pics02.jpg') }}" alt=""></a>
								<p>Pellentesque tristique ante ut risus. Quisque dictum. Integer sagittis convallis, rutrum elementum congue, nibh. Suspendisse dictum porta lectus.</p>
								<a href="#" class="button">View Full Details</a>
							</section>
						</div>
						<div class="4u">
							<section>
								<a href="#" class="image full"><img src="{{ asset('images/pics03.jpg') }}" alt=""></a>
								<p>Pellentesque tristique ante ut risus. Quisque dictum. Integer sagittis convallis, rutrum elementum congue, nibh. Suspendisse dictum porta lectus.</p>
								<a href="#" class="button">View Full Details</a>
							</section>
						</div>
					</div>
				</section>
			</div>
		</div>
@endsection
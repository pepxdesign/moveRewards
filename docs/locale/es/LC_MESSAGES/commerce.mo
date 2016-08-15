��    0      �                        /     G     W  8   c  9   �     �     �  ,     )   2     \     `     p     y     �     �  �   �  ~   �  �        �     �  �   �      �   �  �   %	  R  �	  �  �  n   �  N   ^  @   �     �  �   �  F   �     �     �  
   �                                (  
   5     @     G  	   L     V  �  Z     �  .   �     "     4  L   A  F   �  *   �        ;     >   S     �     �     �     �     �     �  "  �  �     �   �     �     �  �   �  -  �  �   �  �   �  p  Y    �  �   �  �   r  ^         t   �   y   X   h!     �!     �!  
   �!     �!     �!     �!     �!     �!     "  
   "     "     !"  	   %"     /"   Check Eligibility Code for user's carrier Complete Reward Description Function called after checking eligibility on the server Function called after completing the reward on the server ID for campaign setup by Aquto Input arguments Is the current user eligible for the reward? Is the user still eligible for the reward Key Multi-Page flow Optional Required Response properties Reward amount in MB Reward customers with mobile data in a wide range of scenarios, such as making purchases, booking reservations, enrolling in notifications, and help increase add-on items during the purchase process while reducing cart abandonment. Server configured string containing carrier and reward amount. Ex: Congratulations, you just added 1GB to your AT&T data plan! Server configured string containing carrier and reward amount. Ex: Purchase any subscription and get 1GB added to your AT&T data plan. Setup Single-Page flow The ``checkEligibilitySinglePage`` method determines if the current user is eligible to receive the configured MB reward. This function also starts a reward session on the server that can be completed later. The ``checkEligibility`` method determines if the current user if eligible to receive the configured MB reward . This function also starts a reward session on the server that can be completed later. You should call ``checkEligibility`` on your landing page. The ``complete`` method finishes the reward session and triggers the MB reward. The ``complete`` method must be executed within the same scope as the ``userToken`` The ``complete`` method finishes the reward session and triggers the MB reward. This method should be called on your thank you page. The integration for the Multi-page MoVE Reward Commerce flow will occur in two places, the landing page, where the offer is displayed to the subscriber, and the thank you page, where the reward confirmation is displayed to the subscriber. During this flow Aquto will set a 3rd party cookie to register the beginning of the offer. This occurs when the initial offer is displayed to the subscriber, and is performed automatically by the API. The API reads the cookie again and it is used to perform the reward when the conversion occurs and the reward confirmation is displayed to the subscriber. The single-page MoVE Reward Commerce flow is ideal for flows where the offer is displayed to the customer and they are rewarded for taking an action directly on that page, such as watching a video to completion. This flow does not utilize 3rd party cookies like the Multi-page MoVE Reward Commerce Flow, and instead returns a token when the offer is displayed to the customer. The same token is provided to the Javascript SDK when the user completes the offer and is shown the reward confirmation. This library must be included on both the landing page and thank you page. It can be embedded as a script tag: This library must be included on the page. It can be embedded as a script tag: Token that must be passed back to server when offer is completed Type We assume you are using a DOM manipulation library, such as jQuery. All examples below will assume jQuery $ syntax and should be called in ``$(document).ready()`` block. When embedded as a script tag, it exposes the ``aquto`` global object. boolean callback campaignId carrier eligible false function integer rewardAmount rewardText string true userToken yes Project-Id-Version: MoVE Rewards 1.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-15 10:20-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Chequeo de Elegiblidad Código que representa el operador del usuario Otorgar el Premio Descripción Función que se llamará después de verificar la elegiblidad en el servidor Función que se llamará después de otorgado el premio en el servidor ID para la camapaña configurada por Aquto Parámetros de entrada Indica si el usuario actual es elegible o no para el premio Indica si el usuario sigue siendo elegible o no para el premio Nombre Flujo Multi-Page Opcional Obligatorio Propiedades de la respuesta Cantidad en MB del premio Premia a tus clientes con datos móviles en una amplia variedad de escenarios, tales como hacer compras, realizar reservas, subscribirse a notificaciones, y ayuda a aumentar la cantidad de items adicionales durante el proceso de compra mientras reduces el abandono de tus usuarios al mismo. Texto configurado en el servidor que debe contener el nombre del operador y la cantidad de datos de premio. Ejemplo: ¡Felicitaciones, has ganado 1GB extra para tu plan de datos de AT&T! Texto configurado en el servidor que debe contener el nombre del operador y la cantidad de datos de premio. Ejemplo: Abonando cualquier subscripción recibe 1GB extra para tu plan de datos de AT&T. Configuración Flujo Single-Page El método `checkEligibilitySinglePage` determina si el usuario actual es elegible o no para recibir los MB configurados de premio. Esta función inicia también una sesión para otorgar el premio en el servidor que puede ser completada más tarde. El método ``checkEligibility`` determina si el usuario actual es elegible o no para recibir los MB configurados de premio. Esta función inicia también una sesión para otorgar el premio en el servidor que puede ser completada más tarde. Debes llamar a ``checkEligibility`` en tu página de inicio. El método ``complete`` finaliza la sesión creada previamente en el servidor y comienza el proceso de premiación de datos. Este método debe ser llamado en tu página de agradecimiento. El método ``complete`` finaliza la sesión creada previamente en el servidor y comienza el proceso de premiación de datos. Este método debe ser llamado en tu página de agradecimiento. La integración con el flujo Multi-page de MoVE Reward Commerce debe realizarse en dos lugares, la página de inicio, donde la oferta es mostrada al abonado, y la página de agradecimiento, donde la confirmación del premio es mostrada al abonado. Durante este proceso Aquto utilizará una cookie de un servicio de terceros para registrar que el flujo ha comenzado. Esto sucede de forma automática a través de la API cuando la oferta inicial es mostrada al abonado. Cuando la conversión se concreta, la API lee esta cookie nuevamente y es utilizada para otorgar el premio y mostrar la página de confirmación al abonado. El flujo single-page de MoVE Reward Commerce es ideal para flujos en donde la oferta es mostrada al cliente y estos son premiados por realizar una acción directamente en esa página, como por ejemplo mirar un video. Este flujo no utiliza cookies de terceros como el flujo Multi-page de MoVE Reward Commerce y devuelve en cambio un token cuando la oferta es mostrada al cliente. Este mismo token es provisto luego al SDK de Javascript cuando el usuario completa la oferta y se le muestra la confirmación del premio. Esta librería debe ser añadida tanto en la página de inicio como la de agradecimiento. Puede ser embebida a través de un tag de script de la siguiente manera: Esta librería debe ser añadida tanto en la página de inicio como la de agradecimiento. Puede ser embebida a través de un tag de script de la siguiente manera: Token que debe ser enviado nuevamente al servidor cuando la acción de la oferta es completada Tipo Se asume que se esta utilizando alguna librería de manipulación del DOM, como por ejemplo jQuery. Todos los ejemplos a continuación utilizaran la sintaxis de jQuery y deberán ser llamados en un bloque del tipo ``$(document).ready()``. Si es embebida como un tag de script, esta expondrá un objeto global llamado ``aquto``. boolean callback campaignId carrier eligible no function integer rewardAmount rewardText string sí userToken sí 